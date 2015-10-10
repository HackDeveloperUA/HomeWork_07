//
//  AppDelegate.m
//  HomeWork_07
//
//  Created by MD on 07.02.15.
//  Copyright (c) 2015 hh. All rights reserved.
//

#import "AppDelegate.h"


#import "Man.h"
#import "Jumper.h"
#import "Swimmer.h"
#import "Runner.h"
#import "Curly.h"

#import "Animal.h"
#import "Cheetah.h"
#import "Dolphin.h"
#import "Kangaroo.h"


#import "ASSwimmers.h"
#import "ASJumpers.h"
#import "ASRunners.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    
    
    Jumper*  jump1  = [Jumper  new];
    Swimmer* swim1  = [Swimmer new];
    Runner*  run1   = [Runner  new];
    Curly*   curly1 = [Curly   new];
    
    
    Cheetah*   cheetah1  = [Cheetah  new];
    Dolphin*   dolphin1  = [Dolphin  new];
    Kangaroo*  kangaroo1 = [Kangaroo new];
    
    
    // Man
    
    jump1.name       = @"Jump1";
    jump1.jumpHeight = 1.5f;
    
    swim1.name       = @"Swim1";
    swim1.lenghtSwim = 2.5f;
    
    run1.name        = @"Run1";
    run1.lenghtRun   = 10.5f;
    

    // Animal
    
    cheetah1.name  = @"cheetah1";
    cheetah1.lenghtRun = 100.f;
    
    dolphin1.name  = @"dolphin1";
    dolphin1.lenghtSwim = 50.f;
    
    kangaroo1.name  = @"kangaroo1";
    kangaroo1.jumpHeight = 3.2f;
    
    
    
    
    NSArray* array = [NSArray arrayWithObjects:jump1,
                                               swim1,
                                                run1,
                                               curly1 ,
                      
                                                cheetah1,dolphin1,kangaroo1, nil];
    
    
    
    for (id  <ASJumpers,ASRunners,ASSwimmers> tmp  in array) {
        
        NSLog(@" Name = %@ ", tmp.name);
        
       
        if ([tmp conformsToProtocol:@protocol(ASJumpers)]) {
            
            
        }
        
        if ([tmp conformsToProtocol:@protocol(ASSwimmers)]) {
            
            
        }
     
        if ([tmp conformsToProtocol:@protocol(ASRunners)]) {
            
        }
    }
    

    
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
