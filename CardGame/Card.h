//
//  Card.h
//  CardGame
//
//  Created by Jordan Schultz on 9/7/15.
//  Copyright (c) 2015 UC Davis. All rights reserved.
//
@import Foundation;

#ifndef CardGame_Card_h
#define CardGame_Card_h

@interface Card: NSObject

@property (strong, nonatomic) NSString *contents;
@property (strong, nonatomic) NSArray* deck;

- (int)Match:(NSArray*)cards;  //function that returns an NSString



@end





#endif
