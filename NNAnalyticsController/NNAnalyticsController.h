//
//  NNAnalyticsController.h
//  NNAnalyticsController
//
//  Created by Scott Twichel on 8/7/14.
//  Copyright (c) 2014 PepperGum Games. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NNAnalyticsController : NSObject<NSURLConnectionDelegate>

+(BOOL)postUserDataToServer:(NSString*)userData usingUsername:(NSString*)username password:(NSString*)password ;
+(NSString*)formatUserDataForUpload:(NSDictionary*) userData;

@end
