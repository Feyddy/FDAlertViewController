//
//  FDAlertViewController.h
//  FDAlertViewController
//
//  Created by t3 on 16/12/30.
//  Copyright © 2016年 feyddy. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FDAlertAction : NSObject

+ (instancetype)actionWithTitle:(NSString *)title handler:(void (^)(FDAlertAction *action))handler;

@property (nonatomic, readonly) NSString *title;

@end


@interface FDAlertViewController : UIViewController

@property (nonatomic, readonly) NSArray<FDAlertAction *> *actions;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, assign) NSTextAlignment messageAlignment;

+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message;
- (void)addAction:(FDAlertAction *)action;

@end
