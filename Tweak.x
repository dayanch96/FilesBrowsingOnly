#import <UIKit/UIKit.h>

@interface DOCAutoBarHidingTabBarController : UITabBarController
- (void)hideBarWithTransition:(int)transition;
@end

%hook DOCAutoBarHidingTabBarController
- (void)loadViewControllers:(NSArray *)controllers initialIndex:(NSInteger)index {
    %orig(controllers, [controllers indexOfObject:controllers.lastObject]);

    [self hideBarWithTransition:0];
}
%end
