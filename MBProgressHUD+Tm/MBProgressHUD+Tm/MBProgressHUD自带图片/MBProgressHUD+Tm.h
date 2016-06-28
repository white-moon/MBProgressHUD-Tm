//
//  MBProgressHUD+Tm.h
//  YKCS
//
//  Created by Jc.Yang on 16/6/27.
//  Copyright © 2016年 Transn. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>
#import "MBProgressHUD+Type.h"

@interface MBProgressHUD (Tm)
/**
 *  显示一个错误信息，在.7秒后消失
 *
 *  @param error 错误信息
 *  @param view  一般用当前view,如果为nil，则为当前window
 */
+ (void)showError:(NSString *)error toView:(UIView *)view;
/**
 *  显示一个成功的信息
 *
 *  @param success
 *  @param view    
 */
+ (void)showSuccess:(NSString *)success toView:(UIView *)view;
/**
 *  显示一条信息，一般用在网络加载的时候提示
 *
 *  @param message 信息内容
 *  @param view    一般当前view，如果为nil，则为当前window
 *
 *  @return 当前对象
 */
+ (instancetype)showMessage:(NSString *)message toView:(UIView *)view;
/**
 *  结合上面的使用，加载完后隐藏提示信息
 *
 *  @param view
 */
+ (void)hideHUDForView:(UIView *)view;
/**
 *  以Tm开头，自带图片，success,error，Info
 *
 *  @param success
 *  @param view    
 */
+ (void)Tm_showSuccess:(NSString *)success toView:(UIView *)view;
+ (void)Tm_showError:(NSString *)error toView:(UIView *)view;
+ (void)Tm_showInfo:(NSString *)info toView:(UIView *)view;
@end
