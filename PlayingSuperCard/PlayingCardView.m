//
//  PlayingCardView.m
//  PlayingSuperCard
//
//  Created by Harvey Yang on 2018/3/27.
//  Copyright © 2018年 Harvey Yang. All rights reserved.
//

#import "PlayingCardView.h"

@implementation PlayingCardView

#define CORNER_FONT_STANDARD_HEIGHT 180.0
#define CORNER_RADIUS 12.0

-(CGFloat)cornerscaleFactor {return self.bounds.size.height/CORNER_FONT_STANDARD_HEIGHT;}
-(CGFloat)cornerRadius {return CORNER_RADIUS*[self cornerscaleFactor];}
-(CGFloat)cornerOffSet {return [self cornerRadius]/3.0;}

#pragma mark - initial
-(void)setup{
    self.backgroundColor = nil;
    self.opaque = NO;
    self.contentMode = UIViewContentModeRedraw;
}


-(void)awakeFromNib{
    NSLog(@"awake from nib");
    [self setup];
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    UIBezierPath * roundedRect = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:[self cornerRadius]];
    [roundedRect addClip];
    [[UIColor whiteColor] setFill];
    UIRectFill(self.bounds);
    
    [[UIColor blueColor] setStroke];
    [roundedRect stroke];
}


-(id) initWithFrame:(CGRect)frame{
    NSLog(@"initwithframe");
    self = [super initWithFrame:frame];
    if(self){
        
    }
    return self;
}

@end
