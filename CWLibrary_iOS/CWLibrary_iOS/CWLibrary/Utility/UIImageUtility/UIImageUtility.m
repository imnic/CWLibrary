//
//  UIImageUtility.c
//  coldjoke-ios-client
//
//  Created by ly on 13-10-12.
//  Copyright (c) 2013年 Coldworks. All rights reserved.
//


UIImage *imageWithNameType(NSString *name, NSString *type)
{
    NSString *path = [[NSBundle mainBundle] pathForResource:name ofType:type];
    return [[UIImage alloc] initWithContentsOfFile:path];
}

UIImage *pngImage(NSString *imageName)
{
    return imageWithNameType(imageName, @"png");
}

UIImage *jpegImage(NSString *imageName)
{
    UIImage *image;
    
    image = imageWithNameType(imageName, @"jpg");
    if (!image) {
        image = imageWithNameType(imageName, @"jpeg");
    }
    return image;
}