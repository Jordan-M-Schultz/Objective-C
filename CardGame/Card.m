//
//  Card.m
//  CardGame
//
//  Created by Jordan Schultz on 9/7/15.
//  Copyright (c) 2015 UC Davis. All rights reserved.
//

@import Foundation;
#import "Card.h"

@interface Card()

@end

@implementation Card

- (int)Match:(NSArray*)cards{
    int sum = 0;
    
    for( Card *card in cards){
        if([card.contents isEqualToString:self.contents])
            sum++;
    }
    return sum;
    
}





@end