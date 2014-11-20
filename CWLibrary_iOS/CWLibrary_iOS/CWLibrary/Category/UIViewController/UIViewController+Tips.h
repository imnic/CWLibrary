//
//  UIViewController+Tips.h
//  lengtucao
//
//  Created by ly on 13-10-22.
//  Copyright (c) 2013年 ly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CWHUDTips.h"

@interface UIViewController (Tips)

- (void)showTips:(NSString *)tips;

- (void)showLoadingTips:(NSString *)tips;

- (void)showTips:(NSString *)tips withStatus:(TipsStatusType)status dismissAfter:(NSTimeInterval)delay;

- (void)hideTips;

- (void)hideTipsAnimated:(BOOL)animated;

@end
