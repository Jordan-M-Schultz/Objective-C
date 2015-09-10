//
//  Deck.m
//  CardGame
//
//  Created by Jordan Schultz on 9/8/15.
//  Copyright (c) 2015 UC Davis. All rights reserved.
//

@import Foundation;
#include "Deck.h"

@interface Deck() //private declarations here
    @property (strong, nonatomic) NSMutableArray *deckofcards; //Mutable meaning its an array that can grow in size after
                                                                //initialization, like a vector
@end


@implementation Deck

-(NSMutableArray *)deckofcards{
    if(!_deckofcards) //if not already defined, create an array
        _deckofcards =[[NSMutableArray alloc]init];
    return _deckofcards;

}


-(Card * )drawRandomCard{
    Card* random = nil;
    
    if([self.deckofcards count]){
        int index = arc4random() % [self.deckofcards count];
        random = self.deckofcards[index];
        [self.deckofcards removeObjectAtIndex:(index)];
    }
    
    return random;
}

-(void)addCard:(Card*)card{
    [self addCard:card atTop:false];

}

-(void)addCard:(Card*)card atTop:(BOOL)atTop{
    if(atTop)
        [self.deckofcards insertObject:card atIndex:(0)];
    else
        [self.deckofcards addObject:(card)];
}

@end