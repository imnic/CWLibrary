//
//  CWStringValidator.m
//  coldjoke-ios-client
//
//  Created by ly on 13-12-31.
//  Copyright (c) 2013年 Coldworks. All rights reserved.
//

#import "CWStringValidator.h"

@interface CWStringValidator ()

@property (strong, nonatomic) NSString *sourceString;

@property (strong, nonatomic) NSString *targetString;

@property (copy, nonatomic) NSError* (^validateBlock)(NSString *string);

@property (copy, nonatomic) NSError* (^compareBlock)(NSString *source, NSString *target);

@end


@implementation CWStringValidator

#pragma mark - Make validator

+ (instancetype)makeValidatorWithString:(NSString *)string block:(NSError* (^)(NSString *string))block
{
    CWStringValidator *validator = [[CWStringValidator alloc] init];
    validator.sourceString = string;
    validator.validateBlock = block;
    
    return validator;
}

+ (instancetype)makeCompareValidatorWithSource:(NSString *)sourceString target:(NSString *)targetString errorMessage:(NSString *)msg
{
    CWStringValidator *validator = [[CWStringValidator alloc] init];
    validator.sourceString = sourceString;
    validator.targetString = targetString;
    validator.compareBlock = ^ NSError* (NSString *source, NSString *target) {
        BOOL same = [source isEqualToString:target];
        
        if (!same) {
            NSString *errorMsg = ((msg!=nil) ? msg : @"字符串不相同");
            return [CWStringValidator errorWithErrorMessage:errorMsg];
        }
        return nil;
    };
    
    return validator;
}


#pragma mark - Validate

- (NSError *)validate
{
    if (self.validateBlock) {
        return self.validateBlock(self.sourceString);
    }
    
    if (self.compareBlock) {
        return self.compareBlock(self.sourceString, self.targetString);
    }
    
    return nil;
}


#pragma mark - Error maker
+ (NSError *)errorWithErrorMessage:(NSString *)msg
{
    return [CWStringValidator errorWithErrorMessage:msg code:-1];
}

+ (NSError *)errorWithErrorMessage:(NSString *)msg code:(NSInteger)code
{
    NSDictionary *userInfo = @{ NSLocalizedFailureReasonErrorKey: msg };
    return [NSError errorWithDomain:@"CWStringValidatorDomain" code:code userInfo:userInfo];
}

@end
