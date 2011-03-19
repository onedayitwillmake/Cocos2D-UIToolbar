//
//  RootViewController.h
//  AirHop
//
//  Created by Mario Gonzalez on 3/17/11.
//  Copyright Ogilvy & Mather 2011. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Cocos2DViewController.h"


@interface RootViewController : UIViewController {
	UIToolbar*					_toolbar;
	Cocos2DViewController*		_cocosViewController;
}
@property(nonatomic, retain) IBOutlet UIToolbar*		_toolbar;
@property(nonatomic, retain) Cocos2DViewController*		_cocosViewController;

@end
