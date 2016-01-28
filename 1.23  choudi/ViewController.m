//
//  ViewController.m
//  1.23  choudi
//
//  Created by zuo on 16/1/23.
//  Copyright © 2016年 zuo. All rights reserved.
//

#import "ViewController.h"
#import "oneViewController.h"

#define RGBCOLOR(r,g,b)         [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]
#define RGBACOLOR(r,g,b,a)      [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
#define RGBBLUE                  RGBCOLOR(50, 194, 247)
extern void hahaha();
typedef void(*hahha)();
typedef void(*abc)() ;

extern void(*he)();



typedef void (**hello)();


typedef UIView*(view)();
@interface ViewController ()
{

    UIView *view1;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor =RGBBLUE;
    
    
    oneViewController *one =[[oneViewController alloc]init];
    [self addChildViewController:one];
//    self.view.backgroundColor =[UIColor whiteColor];
    
    [self.view insertSubview:view1 atIndex:-1];
    [self.view addSubview:one.view];
    view1 =one.view;
    UIPanGestureRecognizer *pan =[[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(moveAction:)];
    [self.view addGestureRecognizer:pan];
//    
//    UISwipeGestureRecognizer *swip1 =[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipAction:)];
//    
//    swip1.direction =
}
- (void)swipAction:(UISwipeGestureRecognizer *)swip{



}
- (void)moveAction:(UIPanGestureRecognizer *)pan{

    CGRect frame1 =view1.frame;
    frame1.origin.x=[pan locationInView:self.view].x;
    
    
    CGFloat X =[pan translationInView:self.view].x;
    
    if (pan.state ==UIGestureRecognizerStateEnded||pan.state==UIGestureRecognizerStateCancelled) {
        
        if (X>=self.view.frame.size.width*0.3) {
            
            [UIView animateWithDuration:0.25 animations:^{
                view1.transform =CGAffineTransformMakeTranslation(self.view.frame.size.width*0.5, 0);
                view1.transform =CGAffineTransformScale(view1.transform, 0.8, 0.8);
            }];
            
        }else if(X<0){
            [UIView animateWithDuration:0.25 animations:^{
                
                view1.transform =CGAffineTransformIdentity;
            }];
            
            
            return;
        }
    }

    
    

};


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
void hahaha(){
    NSLog(@"hahah");
    
  
};

@end
