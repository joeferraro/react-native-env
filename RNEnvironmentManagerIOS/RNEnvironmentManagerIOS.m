#import "RNEnvironmentManagerIOS.h"
#import "RCTConvert.h"

@implementation RNEnvironmentManagerIOS

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(get:(NSString *)name callback:(RCTResponseSenderBlock)callback) {
    @try {
        NSDictionary *env = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"environment" ofType:@"plist"]];
        if ([env objectForKey:name]) {
            callback(@[[NSNull null], env[name]]);
        } else {
            callback(@[[NSNull null], [NSNull null]]);
        }
    }
    @catch (NSException *exception) {
        callback(@[exception.reason, [NSNull null]]);
    }
}

RCT_EXPORT_METHOD(getAll:(RCTResponseSenderBlock)callback) {
    @try {
        NSDictionary *env = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"environment" ofType:@"plist"]];
        callback(@[[NSNull null], env]);
    }
    @catch (NSException *exception) {
        callback(@[exception.reason, [NSNull null]]);
    }
}

- (NSDictionary *)constantsToExport
// Include environment variables so they are available without using a promise.
{
  NSDictionary *env = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"environment" ofType:@"plist"]];
  return env;
}

@end
