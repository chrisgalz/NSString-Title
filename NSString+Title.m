//
//  NSString+Title.m
//  Change
//
//  Created by Chris Galzerano on 8/26/14.
//  Copyright (c) 2014 chrisgalz. All rights reserved.
//

#import "NSString+Title.h"

@implementation NSString (Title)

+ (NSString*)titleStringFromString:(NSString*)string {
    NSArray *lowercaseWords = @[@"of", @"and", @"or", @"for", @"the", @"a", @"an", @"on", @"at", @"to", @"from", @"by"];
    NSString *allLowercase = string.lowercaseString;
    NSArray *words = [allLowercase componentsSeparatedByString:@" "];
    NSMutableString *title = [NSMutableString new];
    for (NSString *word in words) {
        NSInteger index = [words indexOfObject:word];
        if (index == 0 || index == words.count-1) [title appendString:[word capitalizedString]];
        else [title appendString:(([lowercaseWords containsObject:word]))?word:[word capitalizedString]];
        if (index != words.count-1) [title appendString:@" "];
    }
    return (NSString*)title;
}

@end
