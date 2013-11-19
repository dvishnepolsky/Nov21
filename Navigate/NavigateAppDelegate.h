//
//  NavigateAppDelegate.h
//  Navigate
//
//  Created by Dimitri Vishnepolsky on 11/15/13.
//  Copyright (c) dImo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NavigateAppDelegate: UIResponder <UIApplicationDelegate> {
	NSArray *titles;
}

- (void) nextStation;

@property (strong, nonatomic) UIWindow *window;
@end
