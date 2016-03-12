//
//  StringToPigLatin.m
//  Pig Latin
//
//  Created by Nelson Chow on 2016-03-11.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import "StringToPigLatin.h"
#import "InputCollector.h"

@implementation NSString (StringToPigLatin)

-(NSString *)stringByPigLatinization {
    
    NSArray *vowels = @[@"a",@"e",@"i",@"o",@"u",@"y"];
    NSArray *wordCollection = [self componentsSeparatedByString:@" "];

    NSCharacterSet *vowelsSet = [NSCharacterSet characterSetWithCharactersInString: [vowels componentsJoinedByString:@""]];
    
    NSMutableString *pigLatinString = [NSMutableString string];
    
    for (NSString *word in wordCollection) {
        NSMutableString *resultWord = [NSMutableString stringWithString:word];
        
        NSRange range = [word rangeOfCharacterFromSet:vowelsSet options:NSCaseInsensitiveSearch];
        if (range.location == 0) {
            [resultWord appendString:@"way"];
        } else {
        
            NSString * beforeVowel = [word substringWithRange:NSMakeRange(0, range.location)];
            
            [resultWord deleteCharactersInRange:NSMakeRange(0, range.location)];
            [resultWord appendFormat:@"%@ay",beforeVowel];
            
        }
        
        [pigLatinString appendFormat:@"%@ ", resultWord];
    }
    
    return pigLatinString;

}

@end