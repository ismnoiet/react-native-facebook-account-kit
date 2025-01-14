#import "RNAccountKitAdvancedUIManager.h"

#import <React/RCTBridge.h>
#import <React/RCTRootView.h>

@implementation RNAccountKitAdvancedUIManager
{
    id<AKFAdvancedUIActionController> _actionController;
}

- (void)setActionController:(id<AKFAdvancedUIActionController>)actionController
{
    _actionController = actionController;
}

- (instancetype) initWithTheme:(AKFTheme *__nonnull)theme 
{
    self = [super init];
    self.theme = theme;
    return self;
}

// hide back button
- (UIView *)actionBarViewForState:(AKFLoginFlowState)state
{
    if (state == 1) {
        // state is AKFLoginFlowStatePhoneNumberInput
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 100)];
        return view;
    }
    return nil;
}

@end
