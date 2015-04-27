package im.actor.server.api.rpc.service.users

import scala.concurrent.{ Future, ExecutionContext }

import akka.actor._
import slick.driver.PostgresDriver.api._

import im.actor.api.rpc._
import im.actor.api.rpc.misc.ResponseSeq
import im.actor.server.api.util.{ ContactsUtils, ACL }
import im.actor.server.persist
import im.actor.server.push.{ SeqUpdatesManager, SeqUpdatesManagerRegion }
import im.actor.api.rpc.users.{ UpdateUserLocalNameChanged, UsersService }

class UsersServiceImpl(implicit seqUpdManagerRegion: SeqUpdatesManagerRegion, db: Database, actorSystem: ActorSystem) extends UsersService {
  import ContactsUtils._
  import SeqUpdatesManager._

  override implicit val ec: ExecutionContext = actorSystem.dispatcher

  override def jhandleEditUserLocalName(userId: Int, accessHash: Long, name: String, clientData: ClientData): Future[HandlerResult[ResponseSeq]] = {
    val authorizedAction = requireAuth(clientData).map { implicit client ⇒
      persist.User.find(userId).headOption flatMap {
        case Some(user) ⇒
          if (accessHash == ACL.userAccessHash(client.authId, user)) {
            val action = persist.contact.UserContact.find(client.userId, userId) flatMap {
              case Some(contact) ⇒
                persist.contact.UserContact.updateName(client.userId, userId, Some(name))
              case None ⇒
                for {
                  userPhone ← persist.UserPhone.findByUserId(user.id).head
                  _ ← addContactSendUpdate(userId, userPhone.number, Some(name), user.accessSalt)
                } yield ()
            }

            for {
              _ ← action
              seqstate ← broadcastClientUpdate(UpdateUserLocalNameChanged(userId, Some(name)), None)
            } yield Ok(ResponseSeq(seqstate._1, seqstate._2))
          } else {
            DBIO.successful(Error(CommonErrors.InvalidAccessHash))
          }
        case None ⇒ DBIO.successful(Error(CommonErrors.UserNotFound))
      }
    }

    db.run(toDBIOAction(authorizedAction))
  }
}
