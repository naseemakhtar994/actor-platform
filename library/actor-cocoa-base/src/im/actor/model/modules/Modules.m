//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/Modules.java
//


#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/Configuration.h"
#include "im/actor/model/LocaleProvider.h"
#include "im/actor/model/Messenger.h"
#include "im/actor/model/NetworkProvider.h"
#include "im/actor/model/StorageProvider.h"
#include "im/actor/model/droidkit/engine/PreferencesStorage.h"
#include "im/actor/model/i18n/I18nEngine.h"
#include "im/actor/model/modules/Analytics.h"
#include "im/actor/model/modules/AppStateModule.h"
#include "im/actor/model/modules/Auth.h"
#include "im/actor/model/modules/Contacts.h"
#include "im/actor/model/modules/External.h"
#include "im/actor/model/modules/Files.h"
#include "im/actor/model/modules/Groups.h"
#include "im/actor/model/modules/Messages.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/Notifications.h"
#include "im/actor/model/modules/Presence.h"
#include "im/actor/model/modules/Profile.h"
#include "im/actor/model/modules/Pushes.h"
#include "im/actor/model/modules/SearchModule.h"
#include "im/actor/model/modules/Security.h"
#include "im/actor/model/modules/Settings.h"
#include "im/actor/model/modules/Typing.h"
#include "im/actor/model/modules/Updates.h"
#include "im/actor/model/modules/Users.h"
#include "im/actor/model/modules/utils/PreferenceApiStorage.h"
#include "im/actor/model/network/ActorApi.h"
#include "im/actor/model/network/ActorApiCallback.h"
#include "im/actor/model/network/Endpoints.h"
#include "im/actor/model/util/Timing.h"

@interface ImActorModelModulesModules () {
 @public
  AMConfiguration *configuration_;
  AMI18nEngine *i18nEngine_;
  ImActorModelModulesAnalytics *analytics_;
  AMActorApi *actorApi_;
  ImActorModelModulesAuth *auth_;
  ImActorModelModulesAppStateModule *appStateModule_;
  AMMessenger *messenger_;
  ImActorModelModulesExternal *external_;
  jboolean isAppVisible_;
  id<DKPreferencesStorage> preferences_;
  ImActorModelModulesUsers *users_;
  ImActorModelModulesGroups *groups_;
  ImActorModelModulesUpdates *updates_;
  ImActorModelModulesMessages *messages_;
  ImActorModelModulesPushes *pushes_;
  ImActorModelModulesPresence *presence_;
  ImActorModelModulesTyping *typing_;
  ImActorModelModulesFiles *filesModule_;
  ImActorModelModulesContacts *contacts_;
  ImActorModelModulesNotifications *notifications_;
  ImActorModelModulesSettings *settings_;
  ImActorModelModulesProfile *profile_;
  ImActorModelModulesSearchModule *search_;
  ImActorModelModulesSecurity *security_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesModules, configuration_, AMConfiguration *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, i18nEngine_, AMI18nEngine *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, analytics_, ImActorModelModulesAnalytics *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, actorApi_, AMActorApi *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, auth_, ImActorModelModulesAuth *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, appStateModule_, ImActorModelModulesAppStateModule *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, messenger_, AMMessenger *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, external_, ImActorModelModulesExternal *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, preferences_, id<DKPreferencesStorage>)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, users_, ImActorModelModulesUsers *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, groups_, ImActorModelModulesGroups *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, updates_, ImActorModelModulesUpdates *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, messages_, ImActorModelModulesMessages *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, pushes_, ImActorModelModulesPushes *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, presence_, ImActorModelModulesPresence *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, typing_, ImActorModelModulesTyping *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, filesModule_, ImActorModelModulesFiles *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, contacts_, ImActorModelModulesContacts *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, notifications_, ImActorModelModulesNotifications *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, settings_, ImActorModelModulesSettings *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, profile_, ImActorModelModulesProfile *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, search_, ImActorModelModulesSearchModule *)
J2OBJC_FIELD_SETTER(ImActorModelModulesModules, security_, ImActorModelModulesSecurity *)

@interface ImActorModelModulesModules_ActorApiCallbackImpl : NSObject < AMActorApiCallback > {
 @public
  ImActorModelModulesModules *this$0_;
}

- (void)onAuthIdInvalidatedWithAuthKey:(jlong)authKey;

- (void)onNewSessionCreated;

- (void)onUpdateReceived:(id)obj;

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesModules_ActorApiCallbackImpl)

J2OBJC_FIELD_SETTER(ImActorModelModulesModules_ActorApiCallbackImpl, this$0_, ImActorModelModulesModules *)

__attribute__((unused)) static void ImActorModelModulesModules_ActorApiCallbackImpl_initWithImActorModelModulesModules_(ImActorModelModulesModules_ActorApiCallbackImpl *self, ImActorModelModulesModules *outer$);

__attribute__((unused)) static ImActorModelModulesModules_ActorApiCallbackImpl *new_ImActorModelModulesModules_ActorApiCallbackImpl_initWithImActorModelModulesModules_(ImActorModelModulesModules *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesModules_ActorApiCallbackImpl)

@implementation ImActorModelModulesModules

- (instancetype)initWithAMMessenger:(AMMessenger *)messenger
                withAMConfiguration:(AMConfiguration *)configuration {
  ImActorModelModulesModules_initWithAMMessenger_withAMConfiguration_(self, messenger, configuration);
  return self;
}

- (void)run {
  [((ImActorModelModulesAuth *) nil_chk(self->auth_)) run];
}

- (void)onLoggedIn {
  AMTiming *timing = new_AMTiming_initWithNSString_(@"ACCOUNT_CREATE");
  [timing sectionWithNSString:@"Users"];
  users_ = new_ImActorModelModulesUsers_initWithImActorModelModulesModules_(self);
  [timing sectionWithNSString:@"Groups"];
  groups_ = new_ImActorModelModulesGroups_initWithImActorModelModulesModules_(self);
  [timing sectionWithNSString:@"Search"];
  search_ = new_ImActorModelModulesSearchModule_initWithImActorModelModulesModules_(self);
  [timing sectionWithNSString:@"Security"];
  security_ = new_ImActorModelModulesSecurity_initWithImActorModelModulesModules_(self);
  [timing sectionWithNSString:@"Messages"];
  messages_ = new_ImActorModelModulesMessages_initWithImActorModelModulesModules_(self);
  [timing sectionWithNSString:@"Updates"];
  updates_ = new_ImActorModelModulesUpdates_initWithImActorModelModulesModules_(self);
  [timing sectionWithNSString:@"Presence"];
  presence_ = new_ImActorModelModulesPresence_initWithImActorModelModulesModules_(self);
  [timing sectionWithNSString:@"Typing"];
  typing_ = new_ImActorModelModulesTyping_initWithImActorModelModulesModules_(self);
  [timing sectionWithNSString:@"Files"];
  filesModule_ = new_ImActorModelModulesFiles_initWithImActorModelModulesModules_(self);
  [timing sectionWithNSString:@"Notifications"];
  notifications_ = new_ImActorModelModulesNotifications_initWithImActorModelModulesModules_(self);
  [timing sectionWithNSString:@"Contacts"];
  contacts_ = new_ImActorModelModulesContacts_initWithImActorModelModulesModules_(self);
  [timing sectionWithNSString:@"Settings"];
  settings_ = new_ImActorModelModulesSettings_initWithImActorModelModulesModules_(self);
  [timing sectionWithNSString:@"Profile"];
  profile_ = new_ImActorModelModulesProfile_initWithImActorModelModulesModules_(self);
  [timing end];
  timing = new_AMTiming_initWithNSString_(@"ACCOUNT_RUN");
  [timing sectionWithNSString:@"Settings"];
  [settings_ run];
  [timing sectionWithNSString:@"Files"];
  [filesModule_ run];
  [timing sectionWithNSString:@"Search"];
  [search_ run];
  [timing sectionWithNSString:@"Notifications"];
  [notifications_ run];
  [timing sectionWithNSString:@"AppState"];
  [((ImActorModelModulesAppStateModule *) nil_chk(appStateModule_)) run];
  [timing sectionWithNSString:@"Contacts"];
  [contacts_ run];
  [timing sectionWithNSString:@"Messages"];
  [messages_ run];
  [timing sectionWithNSString:@"Updates"];
  [updates_ run];
  [timing sectionWithNSString:@"Presence"];
  [presence_ run];
  [timing end];
  if (isAppVisible_) {
    [presence_ onAppVisible];
    [notifications_ onAppVisible];
  }
  else {
    [notifications_ onAppHidden];
  }
  [((AMMessenger *) nil_chk(messenger_)) onLoggedIn];
}

- (id<DKPreferencesStorage>)getPreferences {
  return preferences_;
}

- (AMConfiguration *)getConfiguration {
  return configuration_;
}

- (ImActorModelModulesAuth *)getAuthModule {
  return auth_;
}

- (ImActorModelModulesUsers *)getUsersModule {
  return users_;
}

- (ImActorModelModulesGroups *)getGroupsModule {
  return groups_;
}

- (ImActorModelModulesMessages *)getMessagesModule {
  return messages_;
}

- (ImActorModelModulesUpdates *)getUpdatesModule {
  return updates_;
}

- (ImActorModelModulesTyping *)getTypingModule {
  return typing_;
}

- (ImActorModelModulesPresence *)getPresenceModule {
  return presence_;
}

- (AMActorApi *)getActorApi {
  return actorApi_;
}

- (AMI18nEngine *)getI18nEngine {
  return i18nEngine_;
}

- (ImActorModelModulesContacts *)getContactsModule {
  return contacts_;
}

- (ImActorModelModulesFiles *)getFilesModule {
  return filesModule_;
}

- (ImActorModelModulesNotifications *)getNotifications {
  return notifications_;
}

- (ImActorModelModulesSettings *)getSettings {
  return settings_;
}

- (ImActorModelModulesProfile *)getProfile {
  return profile_;
}

- (ImActorModelModulesAppStateModule *)getAppStateModule {
  return appStateModule_;
}

- (ImActorModelModulesPushes *)getPushes {
  return pushes_;
}

- (ImActorModelModulesSecurity *)getSecurity {
  return security_;
}

- (ImActorModelModulesSearchModule *)getSearch {
  return search_;
}

- (AMMessenger *)getMessenger {
  return messenger_;
}

- (ImActorModelModulesAnalytics *)getAnalytics {
  return analytics_;
}

- (ImActorModelModulesExternal *)getExternal {
  return external_;
}

- (void)onAppVisible {
  isAppVisible_ = YES;
  [((ImActorModelModulesAnalytics *) nil_chk(analytics_)) trackAppVisible];
  if ([self getPresenceModule] != nil) {
    [((ImActorModelModulesPresence *) nil_chk([self getPresenceModule])) onAppVisible];
    [((ImActorModelModulesNotifications *) nil_chk([self getNotifications])) onAppVisible];
  }
}

- (void)onAppHidden {
  isAppVisible_ = NO;
  [((ImActorModelModulesAnalytics *) nil_chk(analytics_)) trackAppHidden];
  if ([self getPresenceModule] != nil) {
    [((ImActorModelModulesPresence *) nil_chk([self getPresenceModule])) onAppHidden];
    [((ImActorModelModulesNotifications *) nil_chk([self getNotifications])) onAppHidden];
  }
}

@end

void ImActorModelModulesModules_initWithAMMessenger_withAMConfiguration_(ImActorModelModulesModules *self, AMMessenger *messenger, AMConfiguration *configuration) {
  (void) NSObject_init(self);
  self->messenger_ = messenger;
  self->configuration_ = configuration;
  AMTiming *timing = new_AMTiming_initWithNSString_(@"MODULES_INIT");
  [timing sectionWithNSString:@"I18N"];
  self->i18nEngine_ = new_AMI18nEngine_initWithProvider_withModules_([((AMConfiguration *) nil_chk(configuration)) getLocaleProvider], self);
  [timing sectionWithNSString:@"Preferences"];
  self->preferences_ = [((id<AMStorageProvider>) nil_chk([configuration getStorageProvider])) createPreferencesStorage];
  [timing sectionWithNSString:@"Analytics"];
  self->analytics_ = new_ImActorModelModulesAnalytics_initWithImActorModelModulesModules_(self);
  [timing sectionWithNSString:@"API"];
  self->actorApi_ = new_AMActorApi_initWithAMEndpoints_withAMAuthKeyStorage_withAMActorApiCallback_withAMNetworkProvider_(new_AMEndpoints_initWithAMConnectionEndpointArray_([configuration getEndpoints]), new_ImActorModelModulesUtilsPreferenceApiStorage_initWithDKPreferencesStorage_(self->preferences_), new_ImActorModelModulesModules_ActorApiCallbackImpl_initWithImActorModelModulesModules_(self), [configuration getNetworkProvider]);
  [timing sectionWithNSString:@"Auth"];
  self->auth_ = new_ImActorModelModulesAuth_initWithImActorModelModulesModules_(self);
  [timing sectionWithNSString:@"Pushes"];
  self->pushes_ = new_ImActorModelModulesPushes_initWithImActorModelModulesModules_(self);
  [timing sectionWithNSString:@"App State"];
  self->appStateModule_ = new_ImActorModelModulesAppStateModule_initWithImActorModelModulesModules_(self);
  [timing sectionWithNSString:@"External"];
  self->external_ = new_ImActorModelModulesExternal_initWithImActorModelModulesModules_(self);
  [timing end];
}

ImActorModelModulesModules *new_ImActorModelModulesModules_initWithAMMessenger_withAMConfiguration_(AMMessenger *messenger, AMConfiguration *configuration) {
  ImActorModelModulesModules *self = [ImActorModelModulesModules alloc];
  ImActorModelModulesModules_initWithAMMessenger_withAMConfiguration_(self, messenger, configuration);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesModules)

@implementation ImActorModelModulesModules_ActorApiCallbackImpl

- (void)onAuthIdInvalidatedWithAuthKey:(jlong)authKey {
}

- (void)onNewSessionCreated {
  if (this$0_->updates_ != nil) {
    [this$0_->updates_ onNewSessionCreated];
  }
  if (this$0_->presence_ != nil) {
    [this$0_->presence_ onNewSessionCreated];
  }
}

- (void)onUpdateReceived:(id)obj {
  if (this$0_->updates_ != nil) {
    [this$0_->updates_ onUpdateReceivedWithId:obj];
  }
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)outer$ {
  ImActorModelModulesModules_ActorApiCallbackImpl_initWithImActorModelModulesModules_(self, outer$);
  return self;
}

@end

void ImActorModelModulesModules_ActorApiCallbackImpl_initWithImActorModelModulesModules_(ImActorModelModulesModules_ActorApiCallbackImpl *self, ImActorModelModulesModules *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ImActorModelModulesModules_ActorApiCallbackImpl *new_ImActorModelModulesModules_ActorApiCallbackImpl_initWithImActorModelModulesModules_(ImActorModelModulesModules *outer$) {
  ImActorModelModulesModules_ActorApiCallbackImpl *self = [ImActorModelModulesModules_ActorApiCallbackImpl alloc];
  ImActorModelModulesModules_ActorApiCallbackImpl_initWithImActorModelModulesModules_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesModules_ActorApiCallbackImpl)
