//
//  VLNSplashAd.h
//  VLionADSDKDemo
//
//  Created by 1 on 2019/5/28.
//  Copyright © 2019 zhulin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol VLNSplashAdDelegate;

@interface VLNSplashAd : NSObject

/**
 *  构造方法
 @param tagId - 广告位 ID
 */
- (instancetype)initWithTagId:(NSString *)tagId;

/**
*  委托对象
*/
@property (nonatomic, weak) id<VLNSplashAdDelegate> delegate;

/**
 *  广告发起请求并展示在Window中
 *  发起拉取广告请求,并将获取的广告以全屏形式展示在传入的Window参数中
 *  提示: Splash广告只支持竖屏
    @param window 展示全屏开屏的容器
 */
- (void)loadAdAndShowInWindow:(UIWindow *)window;

/**
*      发起拉取广告请求
*/
- (void)loadAd;

/**
    广告加载成功后展示
    @param window 广告要展示的窗口
*/
- (void)showAdInWindow:(UIWindow *)window;


@end


@protocol VLNSplashAdDelegate <NSObject>

@optional
/**
 开屏广告加载成功.
 */
- (void)vl_splashAdDidLoad:(VLNSplashAd *)splashAd;

/**
 开屏广告展示失败.
 @param error :失败error
 */
- (void)vl_splashAd:(VLNSplashAd *)splashAd didFailWithError:(NSError *)error;

/**
 开屏广告曝光回调
 */
- (void)vl_splashAdExposured:(VLNSplashAd *)splashAd;

/**
 开屏广告点击回调
 */
- (void)vl_splashAdDidClick:(VLNSplashAd *)splashAd;

/**
 开屏广告关闭回调
 */
- (void)vl_splashAdDidClose:(VLNSplashAd *)splashAd;

/**
  开屏广告将要关闭回调
 */
- (void)vl_splashAdWillClose:(VLNSplashAd *)splashAd;

@end

NS_ASSUME_NONNULL_END
