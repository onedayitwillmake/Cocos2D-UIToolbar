//
//  AirHopAppDelegate.h
//  AirHop
//
//  Created by Mario Gonzalez on 3/17/11.
//  Copyright Ogilvy & Mather 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface AirHopAppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow			*window;
	RootViewController	*viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet RootViewController *viewController;

@end
