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

@interface ViewController ()<CharacterDelegate>

@end

@implementation ViewController {
    IBOutlet GameView *gameView;
    IBOutlet Character *heroView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    heroView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)go:(int)direction {
    NSLog(@"go");
}


@end
