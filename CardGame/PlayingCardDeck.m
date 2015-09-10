//
//  PlayingCardDeck.m
//  CardGame
//
//  Created by Jordan Schultz on 9/10/15.
//  Copyright (c) 2015 UC Davis. All rights reserved.
//

@import Foundation;
#include "PlayingCardDeck.h"
#include "PlayingCard.h"


@implementation PlayingCardDeck

-(instancetype)init{
    self = [super init];
    
    if(self)
    {
        for(NSString* suit in [PlayingCard getValidSuits])
            for(NSUInteger rank =1; rank <= [PlayingCard maxRank]; rank++)
            {
                PlayingCard *Card = [[PlayingCard alloc]init];
                Card.suit = suit;
                Card.rank = rank;
                [self addCard:Card];
            }
        
    }
    
    return self;
}




@end