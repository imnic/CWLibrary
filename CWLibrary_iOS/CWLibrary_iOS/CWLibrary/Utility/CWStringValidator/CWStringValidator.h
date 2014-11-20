//
//  CWStringValidator.h
//  coldjoke-ios-client
//
//  Created by ly on 13-12-31.
//  Copyright (c) 2013年 Coldworks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CWStringValidator : NSObject

+ (instancetype)makeValidatorWithString:(NSString *)string block:(NSError* (^)(NSString *string))block;

+ (instancetype)makeCompareValidatorWithSource:(NSString *)sourceString target:(NSString *)targetString errorMessage:(NSString *)msg;

+ (NSError *)errorWithErrorMessage:(NSString *)msg;

- (NSError *)validate;

@end
