#import "KMTestController.h"
#import "KIFTestScenario+Additions.h"

@implementation KMTestController

- (void)initializeScenarios;
{
  [self addScenario:[KIFTestScenario scenarioToHello]];
  [self addScenario:[KIFTestScenario scenarioToGoodBy]]; // GoodByボタンを設置してないので失敗するはず
}

@end
