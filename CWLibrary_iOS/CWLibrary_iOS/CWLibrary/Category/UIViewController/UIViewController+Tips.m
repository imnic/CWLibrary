//
//  UIViewController+ProgressHUD.m
//  lengtucao
//
//  Created by ly on 13-10-22.
//  Copyright (c) 2013年 ly. All rights reserved.
//

#import "UIViewController+Tips.h"

#define DefaultDismissTime      1.5

@implementation UIViewController (Tips)

- (void)showTips:(NSString *)tips
{
    [CWHUDTips showTips:tips];
}

- (void)showLoadingTips:(NSString *)tips
{
    [CWHUDTips showLoadingTips:tips];
}

- (void)showTips:(NSString *)tips withStatus:(TipsStatusType)status dismissAfter:(NSTimeInterval)delay
{
    [[CWHUDTips sharedInstance] showTips:tips withStatus:status dismissAfter:delay];
}

- (void)hideTips
{
    [CWHUDTips hideTips];
}

- (void)hideTipsAnimated:(BOOL)animated
{
    [[CWHUDTips sharedInstance] hideTipsAnimated:animated];
}

@end
