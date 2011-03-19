//
//  UntitledViewController.m
//  Untitled
//
//  Created by Mario Gonzalez on 3/17/11.
//  Copyright 2011 Ogilvy & Mather. All rights reserved.
//

#import "RootViewController.h"

@implementation RootViewController
@synthesize _toolbar, _cocosViewController;


/*
 // The designated initializer. Override to perform setup that is required before the view is loaded.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
 if (self) {
 // Custom initialization
 }
 return self;
 }
 */

/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView {
 }
 */


 // Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
 - (void)viewDidLoad {
	 [super viewDidLoad];
	 
	 Cocos2DViewController* aCocosViewController = [[Cocos2DViewController alloc] initWithNibName:nil bundle:nil];
	 self._cocosViewController = aCocosViewController;
	 [aCocosViewController release];
	
	 // Create the frame, notice that our width and height are reversed because technically we didn't rotate yet.
	 // So we use the width for the height and subtract the toolbarsize
	 int statusBarSize = 20;
	 CGRect cocos2dFrame = CGRectMake(0, 0, self.view.frame.size.height+statusBarSize, self.view.frame.size.width-self._toolbar.frame.size.height-statusBarSize);
	 
	 [self.view addSubview: aCocosViewController.view];
	 [aCocosViewController initCocos2DWithFrame: cocos2dFrame];
 }


 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	 
	 BOOL shouldRotate = (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
	 NSLog(@"ShouldRotate %i", shouldRotate);
	 
	 return shouldRotate;
 }


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
