//
//  PlayingCard.m
//  CardGame
//
//  Created by Jordan Schultz on 9/9/15.
//  Copyright (c) 2015 UC Davis. All rights reserved.
//
#import "PlayingCard.h"
#import <Foundation/Foundation.h>

@implementation PlayingCard : Card

@synthesize suit = _suit; //because we implemented both setter and getter

+(NSArray*)getValidSuits{
    return @[@"♠",@"♥",@"♣",@"♦"];
}

+(NSArray*)getValidRanks{
    return @[@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+(NSUInteger)maxRank{
    return [[self getValidRanks]count]-1;
}

-(NSString*)contents{
    NSArray * possibleRanks = [PlayingCard getValidRanks];
    return [possibleRanks[self.rank] stringByAppendingString:(self.suit)]; //suit is set to one ofthe following possible ranks
}


-(void)setSuit:(NSString *)suit{
    if([[PlayingCard getValidSuits] containsObject:suit] ) //to call class methods (+)
        _suit = suit;
}

-(NSString *)suit{
    if(_suit)
        return (_suit);
    else
        return @"?";
}

-(void)setRank:(NSUInteger)rank{
    if(rank <= [PlayingCard maxRank])
        _rank = rank;
}

@end
