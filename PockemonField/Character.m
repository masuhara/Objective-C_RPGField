//
//  Character.m
//  PockemonField
//
//  Created by Master on 2015/06/16.
//  Copyright (c) 2015年 net.masuhara. All rights reserved.
//

#import "Character.h"

@implementation Character {
    NSTimer *walkTimer;
}

@synthesize delegate;

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self) {
        // Initialization code
        [self initializeView];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if(self) {
        [self initializeView];
        
    }
    return self;
}

- (void)initializeView {
    // Front
    self.image = [UIImage imageNamed:@""];
    if (!walkTimer) {
        /*
        walkTimer = [NSTimer scheduledTimerWithTimeInterval:0.4 target:self selector:@selector(go:) userInfo:nil repeats:YES];
        [walkTimer fire];
         */
    }
}

- (void)go:(int)direction {
    if ([self.delegate respondsToSelector:@selector(go:)]) {
        [self.delegate go:direction];
    }
    NSLog(@"direction == %d", direction);
    switch (direction) {
        case 0:
            
            break;
        case 1:
            
            break;
        case 2:
            
            break;
        case 3:
            
            break;
            
        default:
            break;
    }
}




/*
- (void)goForward {
    self.image = [UIImage imageNamed:@"hero-back-a@2x.png"];
}

- (void)goBack {
    self.image = [UIImage imageNamed:@"hero-front-a@2x.png"];
}

- (void)goLeft {
    self.image = [UIImage imageNamed:@"hero-left-a@2x.png"];
}


- (void)goRight {
    self.image = [UIImage imageNamed:@"hero-right-a@2x.png"];
}
 */


@end
