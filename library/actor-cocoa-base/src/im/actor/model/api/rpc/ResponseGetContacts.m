//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseGetContacts.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/User.h"
#include "im/actor/model/api/rpc/ResponseGetContacts.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Response.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface APResponseGetContacts () {
 @public
  id<JavaUtilList> users_;
  jboolean isNotChanged__;
}

@end

J2OBJC_FIELD_SETTER(APResponseGetContacts, users_, id<JavaUtilList>)

@implementation APResponseGetContacts

+ (APResponseGetContacts *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APResponseGetContacts_fromBytesWithByteArray_(data);
}

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)users
                         withBoolean:(jboolean)isNotChanged {
  APResponseGetContacts_initWithJavaUtilList_withBoolean_(self, users, isNotChanged);
  return self;
}

- (instancetype)init {
  APResponseGetContacts_init(self);
  return self;
}

- (id<JavaUtilList>)getUsers {
  return self->users_;
}

- (jboolean)isNotChanged {
  return self->isNotChanged__;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  id<JavaUtilList> _users = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [((BSBserValues *) nil_chk(values)) getRepeatedCountWithInt:1]; i++) {
    [_users addWithId:new_APUser_init()];
  }
  self->users_ = [values getRepeatedObjWithInt:1 withJavaUtilList:_users];
  self->isNotChanged__ = [values getBoolWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:self->users_];
  [writer writeBoolWithInt:2 withBoolean:self->isNotChanged__];
}

- (NSString *)description {
  NSString *res = @"tuple GetContacts{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APResponseGetContacts_HEADER;
}

@end

APResponseGetContacts *APResponseGetContacts_fromBytesWithByteArray_(IOSByteArray *data) {
  APResponseGetContacts_initialize();
  return ((APResponseGetContacts *) BSBser_parseWithBSBserObject_withByteArray_(new_APResponseGetContacts_init(), data));
}

void APResponseGetContacts_initWithJavaUtilList_withBoolean_(APResponseGetContacts *self, id<JavaUtilList> users, jboolean isNotChanged) {
  (void) APResponse_init(self);
  self->users_ = users;
  self->isNotChanged__ = isNotChanged;
}

APResponseGetContacts *new_APResponseGetContacts_initWithJavaUtilList_withBoolean_(id<JavaUtilList> users, jboolean isNotChanged) {
  APResponseGetContacts *self = [APResponseGetContacts alloc];
  APResponseGetContacts_initWithJavaUtilList_withBoolean_(self, users, isNotChanged);
  return self;
}

void APResponseGetContacts_init(APResponseGetContacts *self) {
  (void) APResponse_init(self);
}

APResponseGetContacts *new_APResponseGetContacts_init() {
  APResponseGetContacts *self = [APResponseGetContacts alloc];
  APResponseGetContacts_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APResponseGetContacts)
