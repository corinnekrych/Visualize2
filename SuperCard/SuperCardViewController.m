//
//  SuperCardViewController.m
//  SuperCard
//
//  Created by Corinne Krych on 5/21/13.
//  Copyright (c) 2013 corinne Krych. All rights reserved.
//

#import "SuperCardViewController.h"
#import "PlayingCardView.h"

@interface SuperCardViewController ()
@property (weak, nonatomic) IBOutlet PlayingCardView *playingCardView;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *swipe;

@end

@implementation SuperCardViewController

- (void) setPlayingCardView:(PlayingCardView *)playingCardView {
    _playingCardView = playingCardView;
    playingCardView.rank = 13; //King
    playingCardView.suit = @"♥";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)swipe:(UISwipeGestureRecognizer *)sender {
    //self.playingCardView.faceUp = ! self.playingCardView.faceUp;
    [UIView transitionWithView:self.playingCardView
                       duration:1
                         options:UIViewAnimationOptionTransitionFlipFromBottom
                     animations:^{
        self.playingCardView.faceUp = ! self.playingCardView.faceUp;
    }
                     completion:NULL];
}

@end
