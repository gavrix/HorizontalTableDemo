//
//  HorTableViewDemoAppDelegate.h
//  HorTableViewDemo
//
//  Created by Sergey Gavrilyuk on 6/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HorTableViewDemoViewController;

@interface HorTableViewDemoAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet HorTableViewDemoViewController *viewController;

@end
