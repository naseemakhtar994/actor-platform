//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/content/UnsupportedContent.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/entity/content/UnsupportedContent.h"
#include "im/actor/model/entity/content/internal/ContentRemoteContainer.h"

@implementation AMUnsupportedContent

- (instancetype)initWithImActorModelEntityContentInternalContentRemoteContainer:(ImActorModelEntityContentInternalContentRemoteContainer *)contentContainer {
  AMUnsupportedContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(self, contentContainer);
  return self;
}

@end

void AMUnsupportedContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(AMUnsupportedContent *self, ImActorModelEntityContentInternalContentRemoteContainer *contentContainer) {
  (void) AMAbsContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(self, contentContainer);
}

AMUnsupportedContent *new_AMUnsupportedContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(ImActorModelEntityContentInternalContentRemoteContainer *contentContainer) {
  AMUnsupportedContent *self = [AMUnsupportedContent alloc];
  AMUnsupportedContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(self, contentContainer);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMUnsupportedContent)
