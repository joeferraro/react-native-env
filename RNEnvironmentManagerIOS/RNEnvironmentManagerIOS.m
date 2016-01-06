#import "RNEnvironmentManagerIOS.h"
#import "RCTConvert.h"

@implementation RNEnvironmentManagerIOS

RCT_EXPORT_MODULE()

- (NSDictionary *)constantsToExport
{
    return [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"environment" ofType:@"plist"]];
}

@end
