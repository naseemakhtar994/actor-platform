//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/Banner.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Banner.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiBanner () {
 @public
  jint id__;
  jint width_;
  jint height_;
  NSString *bannerUrl_;
  NSString *adUrl_;
  jint adCost_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiBanner, bannerUrl_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiBanner, adUrl_, NSString *)

@implementation ImActorModelApiBanner

- (instancetype)initWithInt:(jint)id_
                    withInt:(jint)width
                    withInt:(jint)height
               withNSString:(NSString *)bannerUrl
               withNSString:(NSString *)adUrl
                    withInt:(jint)adCost {
  ImActorModelApiBanner_initWithInt_withInt_withInt_withNSString_withNSString_withInt_(self, id_, width, height, bannerUrl, adUrl, adCost);
  return self;
}

- (instancetype)init {
  ImActorModelApiBanner_init(self);
  return self;
}

- (jint)getId {
  return self->id__;
}

- (jint)getWidth {
  return self->width_;
}

- (jint)getHeight {
  return self->height_;
}

- (NSString *)getBannerUrl {
  return self->bannerUrl_;
}

- (NSString *)getAdUrl {
  return self->adUrl_;
}

- (jint)getAdCost {
  return self->adCost_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->id__ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->width_ = [values getIntWithInt:2];
  self->height_ = [values getIntWithInt:3];
  self->bannerUrl_ = [values getStringWithInt:4];
  self->adUrl_ = [values getStringWithInt:5];
  self->adCost_ = [values getIntWithInt:6];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->id__];
  [writer writeIntWithInt:2 withInt:self->width_];
  [writer writeIntWithInt:3 withInt:self->height_];
  if (self->bannerUrl_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:4 withNSString:self->bannerUrl_];
  if (self->adUrl_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:5 withNSString:self->adUrl_];
  [writer writeIntWithInt:6 withInt:self->adCost_];
}

- (NSString *)description {
  NSString *res = @"struct Banner{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"id=", self->id__));
  res = JreStrcat("$$", res, JreStrcat("$I", @", width=", self->width_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", height=", self->height_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", bannerUrl=", self->bannerUrl_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", adUrl=", self->adUrl_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", adCost=", self->adCost_));
  res = JreStrcat("$C", res, '}');
  return res;
}

@end

void ImActorModelApiBanner_initWithInt_withInt_withInt_withNSString_withNSString_withInt_(ImActorModelApiBanner *self, jint id_, jint width, jint height, NSString *bannerUrl, NSString *adUrl, jint adCost) {
  (void) BSBserObject_init(self);
  self->id__ = id_;
  self->width_ = width;
  self->height_ = height;
  self->bannerUrl_ = bannerUrl;
  self->adUrl_ = adUrl;
  self->adCost_ = adCost;
}

ImActorModelApiBanner *new_ImActorModelApiBanner_initWithInt_withInt_withInt_withNSString_withNSString_withInt_(jint id_, jint width, jint height, NSString *bannerUrl, NSString *adUrl, jint adCost) {
  ImActorModelApiBanner *self = [ImActorModelApiBanner alloc];
  ImActorModelApiBanner_initWithInt_withInt_withInt_withNSString_withNSString_withInt_(self, id_, width, height, bannerUrl, adUrl, adCost);
  return self;
}

void ImActorModelApiBanner_init(ImActorModelApiBanner *self) {
  (void) BSBserObject_init(self);
}

ImActorModelApiBanner *new_ImActorModelApiBanner_init() {
  ImActorModelApiBanner *self = [ImActorModelApiBanner alloc];
  ImActorModelApiBanner_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiBanner)
