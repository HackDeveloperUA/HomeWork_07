//
//  ASRunners.h
//  HomeWork_07
//
//  Created by MD on 07.02.15.
//  Copyright (c) 2015 hh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@protocol ASRunners <NSObject>

@required
@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) CGFloat lenghtRun;

-(void) megaRun;

@optional
-(void) justRun;

@end


