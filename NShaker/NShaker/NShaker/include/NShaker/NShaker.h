//
//  NShaker.h
//  NShaker
//
//  Created by Star on 15/8/22.
//  Copyright © 2015年 Xin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, NShakerDirection) {
    NShakerUpDown = 0,
    NShakerLeftRight,
};

@interface NShaker : NSObject

- (instancetype)initWithView:(UIView *)view direction:(NShakerDirection)direction;

- (instancetype)initWithArray:(NSArray<UIView *> *)viewsArray direction:(NShakerDirection)direction;

- (void)shake;

- (void)shakeWithDuration:(NSTimeInterval)duration completion:(void (^)())completion;


@end
