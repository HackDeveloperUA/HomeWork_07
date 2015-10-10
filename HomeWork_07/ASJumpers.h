//
//  ASJumpers.h
//  HomeWork_07
//
//  Created by MD on 07.02.15.
//  Copyright (c) 2015 hh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol ASJumpers <NSObject>

@required
@property (strong, nonatomic) NSString *name;
@property (assign,nonatomic)  CGFloat jumpHeight;

-(void) megaJump;

@optional
-(void) justJump;


@end
