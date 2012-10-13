#import "AppDelegate.h"

#ifdef RUN_KIF_TESTS
#import "KMTestController.h"
#endif

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
#ifdef RUN_KIF_TESTS
  [[KMTestController sharedInstance] startTestingWithCompletionBlock:^{
    exit([[KIFTestController sharedInstance] failureCount]);
  }];
#endif
}

@end
