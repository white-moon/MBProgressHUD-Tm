//
//  MBProgressHUD+Type.h
//  YKCS
//
//  Created by Jc.Yang on 16/6/27.
//  Copyright © 2016年 Transn. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, MBProgressHUDType) {
    MBProgressHUD_success,
    MBProgressHUD_error,
    MBProgressHUD_info,
};
@interface MBProgressHUD_Type : UIImageView
/** HUD->image */
@property(nonatomic,assign)MBProgressHUDType type;
- (instancetype)initwithType:(MBProgressHUDType)type;
@end
