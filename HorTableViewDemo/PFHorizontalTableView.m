//
//  PFHorizontalTableView.m
//  PamFax
//
//  Created by Sergey Gavrilyuk on 6/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PFHorizontalTableView.h"
#import <QuartzCore/QuartzCore.h>

@implementation PFHorizontalTableView


-(void) commonInit
{
    self.transform = CGAffineTransformMakeRotation(-M_PI_2);
}

-(id)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    if((self = [super initWithFrame:frame style:style]) != nil)
    {
        [self commonInit];
    }
    return  self;
}

-(id)initWithFrame:(CGRect)frame
{
    if((self = [super initWithFrame:frame]) != nil)
    {
        [self commonInit];
    }
    
    return  self;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    if((self = [super initWithCoder:aDecoder]) != nil)
    {
        CGRect frameToBe = self.frame;
        [self commonInit];
        self.frame = frameToBe;
    }
    return self;
}

-(void)setFrame:(CGRect)frame
{
    if(CGAffineTransformIsIdentity(self.transform))
        [super setFrame:frame];
    else
    {
        CGAffineTransform transform = self.transform;
        self.transform = CGAffineTransformIdentity;
        
        CGRect newRect = CGRectMake(frame.origin.x+(frame.size.width - frame.size.height)/2.0, 
                                    frame.origin.y+(frame.size.height - frame.size.width)/2.0, 
                                    frame.size.height, frame.size.width);
        [super setFrame:newRect];
        self.transform = transform;
    }
}

-(CGRect)frame
{
    if(CGAffineTransformIsIdentity(self.transform))
        return super.frame;
    
    CGAffineTransform transform = self.transform;
    self.transform = CGAffineTransformIdentity;
    CGRect rect = super.frame;
    self.transform = transform;
    CGRect newRect = CGRectMake(rect.origin.x+(rect.size.width - rect.size.height)/2.0, 
                      rect.origin.y+(rect.size.height - rect.size.width)/2.0, 
                                rect.size.height, rect.size.width);
    
    return  newRect;
}


@end
