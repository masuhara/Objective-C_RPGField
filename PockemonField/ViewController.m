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
    IBOutlet GameView *gameView;
    IBOutlet Character *heroView;
    
    IBOutlet UIButton *goForwardButton;
    IBOutlet UIButton *goBackButton;
    IBOutlet UIButton *goLeftButton;
    IBOutlet UIButton *goRightButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
    heroView.delegate = self;
    heroView.direction = 0;
     */
    
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressedButton:)];
    [goForwardButton addGestureRecognizer:longPress];
    [goBackButton addGestureRecognizer:longPress];
    [goLeftButton addGestureRecognizer:longPress];
    [goBackButton addGestureRecognizer:longPress];
    
    heroView.image = [UIImage imageNamed:@"hero-back-a"];
}


- (void)longPressedButton:(UILongPressGestureRecognizer *)gestureRecognizer {
    
    switch (gestureRecognizer.state) {
        case UIGestureRecognizerStateBegan:
            NSLog(@"longPress...");
            break;
        case UIGestureRecognizerStateEnded:
            break;
        default:
            break;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)go:(int)direction {
    NSLog(@"go");
}

- (IBAction)goForward:(id)sender {
    [self walkWithDirection:0];
}


- (void)walkWithDirection:(int)direction {
    NSLog(@"direction == %d", direction);
    
    switch (direction) {
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
}

- (void)moveCharacter {
    
}

- (IBAction)goBack:(id)sender {
    [self walkWithDirection:1];
}

- (IBAction)goLeft:(id)sender {
    [self walkWithDirection:2];
}

- (IBAction)goRight:(id)sender {
    [self walkWithDirection:3];
}

@end
