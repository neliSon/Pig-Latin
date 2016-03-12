//
//  main.m
//  Pig Latin
//
//  Created by Nelson Chow on 2016-03-11.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StringToPigLatin.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *inputCollector = [[InputCollector alloc] init];
        
        NSString *input = [inputCollector inputForPrompt:@"Type in a word."];
        NSLog(@"%@",[input stringByPigLatinization]);
        NSLog(@"Hello, World!");
    }
    return 0;
}
