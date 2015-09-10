//
//  Deck.h
//  CardGame
//
//  Created by Jordan Schultz on 9/8/15.
//  Copyright (c) 2015 UC Davis. All rights reserved.
//
@import Foundation;
#include "Card.h"

#ifndef CardGame_Deck_h
#define CardGame_Deck_h
@interface Deck: NSObject


-(Card*)drawRandomCard;
-(void)addCard:(Card*)card;
-(void)addCard:(Card*)card atTop:(BOOL)atTop;

@end






#endif
