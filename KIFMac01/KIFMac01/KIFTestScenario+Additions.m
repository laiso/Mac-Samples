#import "KIFTestScenario+Additions.h"
#import <KIF/KIFMac.h>

@implementation KIFTestScenario (Additions)
+ (id)scenarioToHello;
{
  KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"Test that user can click 'Hello' button."];
  KIFTestStep* step = [KIFTestStep stepToClickViewWithTitle:@"Hello"];
  step.timeout = 1.0;
  [scenario addStep:step];
  
  return scenario;
}

+ (id)scenarioToGoodBy
{
  KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"Test that user can click 'GoodBy' buton."];
  KIFTestStep* step = [KIFTestStep stepToClickViewWithTitle:@"GoodBy"];
  step.timeout = 1.0;
  [scenario addStep:step];
  
  return scenario;
}
@end
