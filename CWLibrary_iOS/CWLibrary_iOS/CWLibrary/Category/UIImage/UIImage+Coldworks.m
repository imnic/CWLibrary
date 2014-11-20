//
//  UIImage+Coldworks.m
//  lengtucao
//
//  Created by ly on 13-10-21.
//  Copyright (c) 2013年 ly. All rights reserved.
//

#import "UIImage+Coldworks.h"

@implementation UIImage (Lengtucao)

- (CGFloat)heightWithLimitWidth:(CGFloat)width
{
    if (self.size.width <= width) {
        return self.size.height;
    }
    
    CGFloat w = self.size.width;
    CGFloat h = self.size.height;
    
    return (h*width/w);
}

@end
