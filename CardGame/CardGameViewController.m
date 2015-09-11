//
//  ViewController.m
//  CardGame
//
//  Created by Jordan Schultz on 9/7/15.
//  Copyright (c) 2015 UC Davis. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;
@end


@implementation CardGameViewController


-(void)setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipLabel.text = [NSString stringWithFormat:@"Flip Count %d",self.flipCount];
    
}

- (IBAction)touchCardButton:(UIButton *)sender { // IBAction is void
    NSString* temp;
    if([sender.currentTitle length]) //if there is a title
    {
        temp = sender.currentTitle;
        [sender setBackgroundImage:[UIImage imageNamed:(@"CardBack")] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else
    {
        [sender setBackgroundImage:[UIImage imageNamed:(@"CardFront")] forState:UIControlStateNormal];
        [sender setTitle:@"A❤︎" forState:UIControlStateNormal];
        // change temp to random card title
    }
    self.flipCount++;

}


@end
