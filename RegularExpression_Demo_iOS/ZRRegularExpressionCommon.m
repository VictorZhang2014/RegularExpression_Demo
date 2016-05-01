//
//  ZRRegularExpressionCommon.m
//  RegularExpression_Demo_iOS
//
//  Created by Victor John on 4/30/16.
//  Copyright © 2016 com.xiaoruigege. All rights reserved.
//

#import "ZRRegularExpressionCommon.h"

@implementation ZRRegularExpressionCommon

+ (BOOL)isMobile:(NSString *)mobile
{
    NSString *regex = @"^((13[0-9])|(147)|(15[0-9])|(18[0-9])|(17[0-9]))\\d{8}$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [pred evaluateWithObject:mobile];
}

+ (BOOL)isEmail:(NSString *)email
{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:email];
}

+ (BOOL)isPassword:(NSString *)password
{
    NSString *passWordRegex = @"^[a-zA-Z0-9]{6,20}+$";
    NSPredicate *passWordPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",passWordRegex];
    return [passWordPredicate evaluateWithObject:password];
}

+ (BOOL)isURL:(NSString *)url
{
    NSString *regulaStr = @"(((http[s]{0,1}|ftp|(itms-services))://)?[a-zA-Z0-9\\.\\-]+\\.([a-zA-Z]{2,4})(:\\d+)?(/[a-zA-Z0-9\\.\\-~!@#$%^&*+?:_/=<>]*)?)|(www.[a-zA-Z0-9\\.\\-]+\\.([a-zA-Z]{2,4})(:\\d+)?(/[a-zA-Z0-9\\.\\-~!@#$%^&*+?:_/=<>]*)?)";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regulaStr];
    return [predicate evaluateWithObject:url];
}

+ (NSArray<NSTextCheckingResult *>*)isContainsURL:(NSString *)url
{
    NSString *regulaStr = @"(((http[s]{0,1}|ftp|(itms-services))://)?[a-zA-Z0-9\\.\\-]+\\.([a-zA-Z]{2,4})(:\\d+)?(/[a-zA-Z0-9\\.\\-~!@#$%^&*+?:_/=<>]*)?)|(www.[a-zA-Z0-9\\.\\-]+\\.([a-zA-Z]{2,4})(:\\d+)?(/[a-zA-Z0-9\\.\\-~!@#$%^&*+?:_/=<>]*)?)";
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:regulaStr
                                                                           options:NSRegularExpressionCaseInsensitive
                                                                             error:nil];
    return [regex matchesInString:url options:0 range:NSMakeRange(0, [url length])];
}

+ (BOOL)isIdentityCard: (NSString *)identityCard
{
    BOOL flag;
    if (identityCard.length <= 0) {
        flag = NO;
        return flag;
    }
    NSString *regex2 = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
    NSPredicate *identityCardPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex2];
    return [identityCardPredicate evaluateWithObject:identityCard];
}

+ (BOOL)isNumber:(NSString *)number
{
    NSString *regex = [NSString stringWithFormat:@"^[0-9]{%ld}$", number.length];
    NSPredicate *numberPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [numberPredicate evaluateWithObject:number];
}

+ (BOOL)isEnglishString:(NSString *)letter
{
    NSString *regex = [NSString stringWithFormat:@"^[A-Za-z]{%ld}$", letter.length];
    NSPredicate *numberPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [numberPredicate evaluateWithObject:letter];
}

+ (BOOL)isChineseString:(NSString *)letter
{
    NSString *regex = @"[\u4e00-\u9fa5]+";
    NSPredicate *numberPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [numberPredicate evaluateWithObject:letter];
}


@end
