//
//  InputCollector.m
//  Pig Latin
//
//  Created by Nelson Chow on 2016-03-11.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector




- (NSString *) inputForPrompt:(NSString *)promptString {
    char userInput[255];
    
    NSArray *consonants = @[@"b",@"c",@"d",@"f",@"g",@"h",@"j",@"k",@"l",@"m",@"n",@"p",@"q",@"r",@"s",@"t",@"v",@"w",@"x",@"z"];
    NSArray *vowels = @[@"a",@"e",@"i",@"o",@"u",@"y"];
    
    NSLog(@"%@", promptString);
    fgets(userInput, 255, stdin);
    NSString *inputString = [[NSString stringWithUTF8String: userInput] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return inputString;
}

@end
