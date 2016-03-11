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
    InputCollector *inputCollector = [[InputCollector alloc] init];
    
    NSString *input = [inputCollector inputForPrompt:@"Type in a word."];
    
    
    NSString *pigLatinString;
    return pigLatinString;
}

@end
