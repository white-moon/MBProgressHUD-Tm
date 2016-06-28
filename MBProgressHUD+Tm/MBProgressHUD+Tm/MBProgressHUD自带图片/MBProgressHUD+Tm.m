//
//  MBProgressHUD+Tm.m
//  YKCS
//
//  Created by Jc.Yang on 16/6/27.
//  Copyright © 2016年 Transn. All rights reserved.
//

#import "MBProgressHUD+Tm.h"

@implementation MBProgressHUD (Tm)
+ (void)show:(NSString *)text icon:(NSString *)icon view:(UIView *)view{
    if (view == nil) {
        view=[UIApplication sharedApplication].keyWindow;
    }
    MBProgressHUD *hud=[MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText=text;
    hud.customView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"MBProgressHUD.bundle/%@",icon]]];
    hud.mode=MBProgressHUDModeCustomView;
    hud.removeFromSuperViewOnHide=YES;
    [hud hide:YES afterDelay:.7];
}
+ (void)showError:(NSString *)error toView:(UIView *)view{
    [self show:error icon:@"error.png" view:view];
}
+ (void)showSuccess:(NSString *)success toView:(UIView *)view{
    [self show:success icon:@"success.png" view:view];
}
+ (instancetype)showMessage:(NSString *)message toView:(UIView *)view{
    if (view == nil) {
        view=[UIApplication sharedApplication].keyWindow;
    }
    MBProgressHUD *hud=[MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText=message;
    hud.removeFromSuperViewOnHide=YES;
    hud.dimBackground=YES;
    return hud;
}
+ (void)hideHUDForView:(UIView *)view{
    if (view == nil) {
        view=[UIApplication sharedApplication].keyWindow;
    }
    [self hideHUDForView:view animated:YES];
}
#pragma mark - type
+ (void)Tm_showSuccess:(NSString *)success toView:(UIView *)view{
    if (view == nil) {
        view=[UIApplication sharedApplication].keyWindow;
    }
    MBProgressHUD *hud=[MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText=success;
    hud.customView=[[MBProgressHUD_Type alloc] initwithType:MBProgressHUD_success];
    hud.mode=MBProgressHUDModeCustomView;
    hud.removeFromSuperViewOnHide=YES;
    [hud hide:YES afterDelay:.7];
}
+ (void)Tm_showError:(NSString *)error toView:(UIView *)view{
    if (view == nil) {
        view=[UIApplication sharedApplication].keyWindow;
    }
    MBProgressHUD *hud=[MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText=error;
    hud.customView=[[MBProgressHUD_Type alloc] initwithType:MBProgressHUD_error];
    hud.mode=MBProgressHUDModeCustomView;
    hud.removeFromSuperViewOnHide=YES;
    [hud hide:YES afterDelay:.7];
}
+ (void)Tm_showInfo:(NSString *)info toView:(UIView *)view{
    if (view == nil) {
        view=[UIApplication sharedApplication].keyWindow;
    }
    MBProgressHUD *hud=[MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText=info;
    hud.customView=[[MBProgressHUD_Type alloc] initwithType:MBProgressHUD_info];
    hud.mode=MBProgressHUDModeCustomView;
    hud.removeFromSuperViewOnHide=YES;
    [hud hide:YES afterDelay:.7];
}
@end
