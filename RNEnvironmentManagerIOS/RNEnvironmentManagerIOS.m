#import "RNEnvironmentManagerIOS.h"
#import "RCTConvert.h"

@implementation RNEnvironmentManagerIOS

RCT_EXPORT_MODULE()

- (NSDictionary *)constantsToExport
{
  NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"environment" ofType:@"plist"]];
  if (dict) return dict;

  NSData *data = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"environment" ofType:@"json"]];
  NSError *error = nil;
  id json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
  if (error) {
    return @{ @"error": @"environment.json not found. Did you forget to Add Files to your project?" };
  } else {
    return json;
  }
}

@end
