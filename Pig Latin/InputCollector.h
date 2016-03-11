//
//  InputCollector.h
//  Pig Latin
//
//  Created by Nelson Chow on 2016-03-11.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

@property (nonatomic) NSArray *consonents;


- (NSString *) inputForPrompt: (NSString *) promptString;

@end
