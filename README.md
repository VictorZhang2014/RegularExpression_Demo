# RegularExpression_Demo
It is simply regular expression for iOS in Objective-C. It integrates some generally methods for detecting string.


The following list is easily to invoke.

Usage

NSString *url = @"www.google.com";
BOOL legalURL = [ZRRegularExpressionCommon isURL:url];
NSLog(@"%@ = %@",url, legalURL ?@"This is a legal URL":@"This is a illegal URL");

NSString *mobile = @"18710290897";
BOOL legalMobile = [ZRRegularExpressionCommon isMobile:mobile];
NSLog(@"%@ = %@",mobile, legalMobile ?@"This is a legal mobile":@"This is a illegal mobile");

NSString *email = @"victorzhangq@gmail.com";
BOOL legalEmail = [ZRRegularExpressionCommon isEmail:email];
NSLog(@"%@ = %@",email, legalEmail ?@"This is a legal email":@"This is a illegal email");

NSString *password = @"victor1234";
BOOL legalPassword = [ZRRegularExpressionCommon isPassword:password];
NSLog(@"%@ = %@",password, legalPassword ?@"This is a legal password":@"This is a illegal password");

NSString *containURLs = @"start www.google.com middle http://www.ebay.com/ willEnd developer.apple.com didEnd";
NSArray<NSTextCheckingResult *>* array = [ZRRegularExpressionCommon isContainsURL:containURLs];
for (NSTextCheckingResult *result in array) {
NSLog(@"Array count %ld and array range.location = %lu and range.length = %lu",array.count, result.range.location, result.range.length);
}

NSString *ICard = @"12332119930301987X";
BOOL legalICard = [ZRRegularExpressionCommon isIdentityCard:ICard];
NSLog(@"%@ = %@",ICard, legalICard ?@"This is a legal IdentityCard":@"This is a illegal IdentityCard");

NSString *number = @"123456";
BOOL legalNumber = [ZRRegularExpressionCommon isIdentityCard:number];
NSLog(@"%@ = %@",number, legalNumber ?@"This is a legal number":@"This is a illegal number");

NSString *englishCharacter = @"VictorJohn";
BOOL legalEnglishCharacter = [ZRRegularExpressionCommon isEnglishString:englishCharacter];
NSLog(@"%@ = %@",englishCharacter, legalEnglishCharacter ?@"This is a legal englishCharacter":@"This is a illegal englishCharacter");

NSString *chineseCharacter = @"中国";
BOOL legalChineseCharacter = [ZRRegularExpressionCommon isChineseString:chineseCharacter];
NSLog(@"%@ = %@",chineseCharacter, legalChineseCharacter ?@"This is a legal chineseCharacter":@"This is a illegal chineseCharacter");


