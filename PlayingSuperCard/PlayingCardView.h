//
//  PlayingCardView.h
//  PlayingSuperCard
//
//  Created by Harvey Yang on 2018/3/27.
//  Copyright © 2018年 Harvey Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView

@property (nonatomic) NSInteger rank;
@property (strong,nonatomic) NSString * suit;
@property (nonatomic) BOOL faceup;

@end
