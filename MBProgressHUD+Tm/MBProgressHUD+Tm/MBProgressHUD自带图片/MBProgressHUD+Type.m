//
//  MBProgressHUD+Type.m
//  YKCS
//
//  Created by Jc.Yang on 16/6/27.
//  Copyright © 2016年 Transn. All rights reserved.
//

#import "MBProgressHUD+Type.h"

@implementation MBProgressHUD_Type
- (void)drawWithType:(MBProgressHUDType)type{
    UIBezierPath *circlePath=[UIBezierPath bezierPath];
    [circlePath moveToPoint:CGPointMake(36, 18)];
    [circlePath addArcWithCenter:CGPointMake(18, 18) radius:17.5 startAngle:0 endAngle:M_PI *2 clockwise:YES];
    [circlePath closePath];
    
    switch (type) {
        case MBProgressHUD_success:{
            [circlePath moveToPoint:CGPointMake(10, 18)];
            [circlePath addLineToPoint:CGPointMake(16, 24)];
            [circlePath addLineToPoint:CGPointMake(27, 13)];
            [circlePath moveToPoint:CGPointMake(10, 18)];
            [circlePath closePath];
            [[UIColor whiteColor] setStroke];
            [circlePath stroke];
            break;}
        case MBProgressHUD_error:{
            [circlePath moveToPoint:CGPointMake(10, 10)];
            [circlePath addLineToPoint:CGPointMake(26, 26)];
            [circlePath moveToPoint:CGPointMake(10, 26)];
            [circlePath addLineToPoint:CGPointMake(26, 10)];
            [circlePath moveToPoint:CGPointMake(10, 10)];
            [circlePath closePath];
            [[UIColor whiteColor] setStroke];
            [circlePath stroke];
            break;}
        case MBProgressHUD_info:{
            [circlePath moveToPoint:CGPointMake(18, 6)];
            [circlePath addLineToPoint:CGPointMake(18, 22)];
            [circlePath moveToPoint:CGPointMake(18, 6)];
            [[UIColor whiteColor] setStroke];
            [circlePath stroke];
            UIBezierPath *path=[UIBezierPath bezierPath];
            [path moveToPoint:CGPointMake(18, 27)];
            [path addArcWithCenter:CGPointMake(18, 27) radius:2 startAngle:0 endAngle:M_PI*2 clockwise:YES];
            [path closePath];
            [[UIColor whiteColor] setFill];
            [path fill];
            break;}
        default:
            break;
            
    }
}
- (instancetype)initwithType:(MBProgressHUDType)type{
  
    MBProgressHUD_Type *typeview=[[MBProgressHUD_Type alloc] init];
   
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(36, 36), NO, 0);
    [self drawWithType:type];
    UIImage *img=UIGraphicsGetImageFromCurrentImageContext();
    typeview.image=img;
    
    return typeview;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:CGRectMake(0, 0, 36, 36)];
    if (self) {
        
    }
    return self;
}
 
@end
