//
//  GameView.m
//  PockemonField
//
//  Created by Master on 2015/06/14.
//  Copyright (c) 2015年 net.masuhara. All rights reserved.
//

#import "GameView.h"

#define WIDTH self.bounds.size.width
#define HEIGHT self.bounds.size.height
#define TILE_NUM 10
#define TILE_WIDTH 30
#define TILE_HEIGHT 30
#define TILE_SIZE CGSizeMake(TILE_WIDTH, TILE_HEIGHT)

@implementation GameView {
    NSMutableArray *tileArray;
}

// initWithCode
- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self) {
        // Initialization code
        [self initializeView];
    }
    return self;
}

// initWithXib
- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if(self) {
        [self initializeView];
        
    }
    return self;
}

- (void)initializeView {
    self.backgroundColor = [UIColor blackColor];
    UIImage *backgroundImage = [UIImage imageNamed:@"weed.png"];
    //UIImage *treeImage = [UIImage imageNamed:@"tree.png"];
    self.backgroundColor = [UIColor colorWithPatternImage:backgroundImage];
    
    if (!tileArray) {
        tileArray = [NSMutableArray new];
    }
    
    for (int i = 0; i < HEIGHT / TILE_HEIGHT; i++) {
        for (int j = 0; j < WIDTH / TILE_WIDTH; j++) {
            /*
            UIImageView *tileView = [[UIImageView alloc] initWithFrame:CGRectMake(TILE_WIDTH * j, TILE_HEIGHT * i, TILE_WIDTH, TILE_HEIGHT)];
            if (j % 2 == 0) {
                if (i % 2 == 0) {
                    tileView.image = treeImage;
                }else {
                    tileView.backgroundColor = [UIColor clearColor];
                }
            }else {
                if (i % 2 == 0) {
                    tileView.backgroundColor = [UIColor clearColor];
                }else {
                   tileView.image = treeImage;
                }
            }
            [tileArray addObject:tileView];
            [self addSubview:tileView];
             */
        }
    }
}


@end
