//
//  View.h
//  Navigate
//
//  Created by Dimitri Vishnepolsky on 11/15/13.
//  Copyright (c) dImo. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;

@interface View: UITextView {
	ViewController *__weak viewController;
}

- (id) initWithFrame: (CGRect) frame controller: (ViewController *__weak) c;
@end
