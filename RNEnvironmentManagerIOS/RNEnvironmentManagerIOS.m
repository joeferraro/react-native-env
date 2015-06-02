#import "RNEnvironmentManagerIOS.h"
#import "RCTConvert.h"

@implementation RNEnvironmentManagerIOS

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(get:(NSString *)name callback:(RCTResponseSenderBlock)callback) {
    @try {
        NSDictionary *env = [[NSProcessInfo processInfo] environment];
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

@end