//
//  ZRRegularExpressionCommon.h
//  RegularExpression_Demo_iOS
//
//  Created by Victor John on 4/30/16.
//  Copyright © 2016 com.xiaoruigege. All rights reserved.
//
//  This is a Regular Expression class for generally judgement in project

#import <Foundation/Foundation.h>

@interface ZRRegularExpressionCommon : NSObject

+ (BOOL)isMobile:(NSString *)mobile;

+ (BOOL)isEmail:(NSString *)email;

+ (BOOL)isPassword:(NSString *)password;

+ (BOOL)isURL:(NSString *)url;

+ (NSArray<NSTextCheckingResult *>*)isContainsURL:(NSString *)url;

+ (BOOL)isIdentityCard: (NSString *)identityCard;

+ (BOOL)isNumber:(NSString *)number;

+ (BOOL)isEnglishString:(NSString *)letter;

+ (BOOL)isChineseString:(NSString *)letter;

@end
