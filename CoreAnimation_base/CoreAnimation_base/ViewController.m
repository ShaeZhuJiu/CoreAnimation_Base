//
//  ViewController.m
//  CoreAnimation_base
//
//  Created by 谢鑫 on 2019/7/27.
//  Copyright © 2019 Shae. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong)UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.imageView];
}
- (UIImageView *)imageView{
    if (_imageView==nil) {
        _imageView=[[UIImageView alloc]initWithFrame:CGRectMake(140, 100, 100, 100)];
        UIImage *image=[UIImage imageNamed:@"1"];
        [_imageView setImage:image];
    }
    return _imageView;
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.imageView.image=[UIImage imageNamed:@"2"];
    CATransition *animation=[CATransition animation];
    //如果输入的type的值没有定义，就会使用默认的fade，渐变
  //  animation.type=kCATransitionFade;
    animation.type=@"push";
    animation.subtype=kCATransitionFromRight;
    animation.duration=5;
    [self.imageView.layer addAnimation:animation forKey:nil];
}

-(void)step{
    //初始化CALayer对象，并添加到控制器view的layer上
    CALayer *subLayer = [CALayer layer];
    subLayer.frame = CGRectMake(140, 100, 100, 100);
    subLayer.backgroundColor = [UIColor yellowColor].CGColor;
    subLayer.borderColor = [UIColor redColor].CGColor;
    subLayer.borderWidth = 4.0;
    subLayer.cornerRadius = 2.0;
    [self.view.layer addSublayer:subLayer];
    //延时1秒后
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        //1-实例化CABasicAnimation对象
        CABasicAnimation *animation = [CABasicAnimation animation];
        //2-设置动画属性
        animation.keyPath = @"position";
        //锚点
        animation.toValue = [NSValue valueWithCGPoint:CGPointMake(290, 150)];
        animation.duration = 2.0;
        animation.repeatCount=3;
        //3-添加动画对象到一个CALayer类的对象上，播放动画
        [subLayer addAnimation:animation forKey:nil];
    });
}
-(void)base{
    //初始化CALayer对象，并添加到控制器view的layer上
    CALayer *subLayer = [CALayer layer];
    subLayer.frame = CGRectMake(140, 100, 100, 100);
    subLayer.backgroundColor = [UIColor yellowColor].CGColor;
    subLayer.borderColor = [UIColor redColor].CGColor;
    subLayer.borderWidth = 4.0;
    subLayer.cornerRadius = 2.0;
    [self.view.layer addSublayer:subLayer];
    //延时1秒后
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        //1-实例化CABasicAnimation对象
        CABasicAnimation *animation = [CABasicAnimation animation];
        //2-设置动画属性
        animation.keyPath = @"transform.translation.y";
        //锚点
        animation.toValue =@300;//平移的距离是100
        animation.duration = 2.0;
       // animation.repeatCount=3;
        //3-添加动画对象到一个CALayer类的对象上，播放动画
        [subLayer addAnimation:animation forKey:nil];
    });
}
-(void)keyFrame{
    //初始化CALayer对象，并添加到控制器view的layer上
    CALayer *subLayer = [CALayer layer];
    subLayer.frame = CGRectMake(140, 100, 100, 100);
    subLayer.backgroundColor = [UIColor yellowColor].CGColor;
    subLayer.borderColor = [UIColor redColor].CGColor;
    subLayer.borderWidth = 4.0;
    subLayer.cornerRadius = 2.0;
    [self.view.layer addSublayer:subLayer];
    //延时1秒后
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        //1-实例化对象
        CAKeyframeAnimation *animation=[CAKeyframeAnimation animation];
        //2-设置动画属性
        animation.keyPath = @"transform.translation.y";
        animation.values=@[@100,@0,@-50];
        animation.duration = 2.0;
        // animation.repeatCount=3;
        //3-添加动画对象到一个CALayer类的对象上，播放动画
        [subLayer addAnimation:animation forKey:nil];
    });
}
-(void)Spring{
    //初始化CALayer对象，并添加到控制器view的layer上
    CALayer *subLayer = [CALayer layer];
    subLayer.frame = CGRectMake(140, 100, 100, 100);
    subLayer.backgroundColor = [UIColor yellowColor].CGColor;
    subLayer.borderColor = [UIColor redColor].CGColor;
    subLayer.borderWidth = 4.0;
    subLayer.cornerRadius = 2.0;
    [self.view.layer addSublayer:subLayer];
    //延时1秒后
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        //1-实例化对象
        CASpringAnimation *animation=[CASpringAnimation animation];
        //2-设置动画属性
        animation.keyPath = @"transform.translation.y";
        animation.fromValue=@0;
        animation.toValue=@200;
        animation.mass=100;
        animation.stiffness=50;
        animation.damping=5;
        animation.initialVelocity=0;
        
        animation.duration = 2.0;
        // animation.repeatCount=3;
        //3-添加动画对象到一个CALayer类的对象上，播放动画
        [subLayer addAnimation:animation forKey:nil];
    });
}
-(void)group{
    //初始化CALayer对象，并添加到控制器view的layer上
    CALayer *subLayer = [CALayer layer];
    subLayer.frame = CGRectMake(140, 100, 100, 100);
    subLayer.backgroundColor = [UIColor yellowColor].CGColor;
    subLayer.borderColor = [UIColor redColor].CGColor;
    subLayer.borderWidth = 4.0;
    subLayer.cornerRadius = 2.0;
    [self.view.layer addSublayer:subLayer];
    //延时1秒后
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        //1-实例化对象
        CABasicAnimation *animation1=[CABasicAnimation animation];
        //2-设置动画属性
        animation1.keyPath = @"transform.translation.y";
        animation1.fromValue=@0;
        animation1.toValue=@200;
        
        CABasicAnimation *animation2=[CABasicAnimation animation];
        animation2.keyPath=@"opacity";
        animation2.fromValue=@1;
        animation2.toValue=@0.1;
        
        CAAnimationGroup *group=[CAAnimationGroup animation];
        group.animations=@[animation1,animation2];
        group.duration=10.0;
        //添加动画组到layer上
        [subLayer addAnimation:group forKey:nil];
        
    });
}
@end
