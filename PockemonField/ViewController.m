//
//  ViewController.m
//  PockemonField
//
//  Created by Master on 2015/06/14.
//  Copyright (c) 2015年 net.masuhara. All rights reserved.
//

#import "ViewController.h"
#import "GameView.h"
#import "Character.h"

@interface ViewController ()<CharacterDelegate, UIGestureRecognizerDelegate>

@end

@implementation ViewController {
    
    int currentDirection;
    
    IBOutlet GameView *gameView;
    IBOutlet Character *heroView;
    
    IBOutlet UIButton *goForwardButton;
    IBOutlet UIButton *goBackButton;
    IBOutlet UIButton *goLeftButton;
    IBOutlet UIButton *goRightButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    goForwardButton.tag = 0;
    goBackButton.tag = 1;
    goLeftButton.tag = 2;
    goRightButton.tag = 3;
    
    UILongPressGestureRecognizer *longPressForward = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressedButton:)];
    longPressForward.minimumPressDuration = 0.05;
    [goForwardButton addGestureRecognizer:longPressForward];
    
    UILongPressGestureRecognizer *longPressBack = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressedButton:)];
    longPressBack.minimumPressDuration = 0.05;
    [goBackButton addGestureRecognizer:longPressBack];
    
    UILongPressGestureRecognizer *longPressLeft = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressedButton:)];
    longPressLeft.minimumPressDuration = 0.05;
    [goLeftButton addGestureRecognizer:longPressLeft];
    
    UILongPressGestureRecognizer *longPressRight = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressedButton:)];
    longPressRight.minimumPressDuration = 0.05;
    [goRightButton addGestureRecognizer:longPressRight];

    heroView.image = [UIImage imageNamed:@"hero-back-a"];
}


- (void)longPressedButton:(UILongPressGestureRecognizer *)gestureRecognizer {

    switch (gestureRecognizer.state) {
        case UIGestureRecognizerStateBegan:
            [self performSelector:@selector(walkWithDirection) withObject:nil afterDelay:0.2];
            break;
        case UIGestureRecognizerStateEnded:
            [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(walkWithDirection) object:nil];
            break;
        default:
            break;
    }
    //[self walkWithDirection:(int)gestureRecognizer.view.tag];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)goForward:(id)sender {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(walkWithDirection) object:nil];
    currentDirection = 0;
    //[self walkWithDirection];
}

- (IBAction)goBack:(id)sender {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(walkWithDirection) object:nil];
    currentDirection = 1;
    //[self walkWithDirection];
}

- (IBAction)goLeft:(id)sender {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(walkWithDirection) object:nil];
    currentDirection = 2;
    //[self walkWithDirection];
}

- (IBAction)goRight:(id)sender {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(walkWithDirection) object:nil];
    currentDirection = 3;
    //[self walkWithDirection];
}


- (void)walkWithDirection{
    
    NSLog(@"currentDirection == %d", currentDirection);
    
    switch (currentDirection) {
        case 0:
            heroView.image = [UIImage imageNamed:@"hero-back-a"];
            heroView.frame = CGRectMake(heroView.frame.origin.x, heroView.frame.origin.y - 30, heroView.frame.size.height, heroView.frame.size.width);
            break;
        case 1:
            heroView.image = [UIImage imageNamed:@"hero-front-a"];
            heroView.frame = CGRectMake(heroView.frame.origin.x, heroView.frame.origin.y + 30, heroView.frame.size.height, heroView.frame.size.width);
            break;
        case 2:
            heroView.image = [UIImage imageNamed:@"hero-left-a"];
            heroView.frame = CGRectMake(heroView.frame.origin.x - 30, heroView.frame.origin.y, heroView.frame.size.height, heroView.frame.size.width);
            break;
        case 3:
            heroView.image = [UIImage imageNamed:@"hero-right-a"];
            heroView.frame = CGRectMake(heroView.frame.origin.x + 30, heroView.frame.origin.y, heroView.frame.size.height, heroView.frame.size.width);
            break;
        default:
            break;
    }
    
    [self performSelector:@selector(walkWithDirection) withObject:nil afterDelay:0.2];
}

- (void)moveCharacter {
    
}



@end
