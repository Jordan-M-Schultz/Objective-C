//
//  PlayingCard.h
//  CardGame
//
//  Created by Jordan Schultz on 9/9/15.
//  Copyright (c) 2015 UC Davis. All rights reserved.
//
@import Foundation;
#include "Card.h"


#ifndef CardGame_PlayingCard_h
#define CardGame_PlayingCard_h

@interface PlayingCard : Card

@property (strong, nonatomic) NSString* suit;
@property (nonatomic) NSUInteger rank;

+(NSArray*)getValidSuits;
+(NSArray*)getValidRanks;
+(NSUInteger)maxRank;

@end




#endif
