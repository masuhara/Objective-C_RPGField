//
//  Character.h
//  PockemonField
//
//  Created by Master on 2015/06/16.
//  Copyright (c) 2015年 net.masuhara. All rights reserved.
//

#import <UIKit/UIKit.h>

// デリゲートを定義
@protocol CharacterDelegate <NSObject>

- (void)go:(int)direction;

@end

@interface Character : UIImageView

@property (nonatomic, assign) id<CharacterDelegate> delegate;


@end
