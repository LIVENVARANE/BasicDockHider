#include "BDHRootListController.h"
@interface SpringBoard : UIApplication
- (void)_relaunchSpringBoardNow;
@end

@implementation BDHRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

- (void)openReddit {
    UIApplication *application = [UIApplication sharedApplication];
    NSURL *URL = [NSURL URLWithString:@"https://www.reddit.com/user/LVN_N"];
    [application openURL:URL options:@{} completionHandler:^(BOOL success) {
        if (success) {
            NSLog(@"Reddit url opened");
        }
    }];
}

- (void)openTwitter {
    UIApplication *application = [UIApplication sharedApplication];
    NSURL *URL = [NSURL URLWithString:@"https://www.twitter.com/LivenOff"];
    [application openURL:URL options:@{} completionHandler:^(BOOL success) {
        if (success) {
            NSLog(@"Twitter url opened");
        }
    }];
}

- (void)respring:(id)sender { //not from me
	pid_t pid;
    const char* args[] = {"killall", "backboardd", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
}


@end
