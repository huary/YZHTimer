//
//  ViewController.m
//  YZHTimerDemo
//
//  Created by yuan on 2018/12/14.
//  Copyright © 2018年 yuan. All rights reserved.
//

#import "ViewController.h"
#import "YZHTimer.h"
#import "NSObject+YZHTimer.h"

@interface ViewController ()

//@property (nonatomic, strong)  YZHTimer *timer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    [self _test];
}

-(void)_test
{
//    [self.timer invalidate];
//    NSLog(@"time=%lld",USEC_FROM_DATE_SINCE1970_NOW);
//    uint64_t start = USEC_FROM_DATE_SINCE1970_NOW;
//    __block NSTimeInterval interval = 60;
//    self.timer = [[YZHTimer alloc] initWithTimeInterval:interval repeat:YES fireBlock:^(YZHTimer *timer) {
//        NSLog(@"timer=%@,time=%f",timer,(USEC_FROM_DATE_SINCE1970_NOW - start)*1.0/USEC_PER_SEC);
////        interval += 0.1;
////        [timer updateTimeInterval:interval];
//    }];
    
    [self cancelTimer];
    
    __block NSTimeInterval interval = 1.0;
    [self startTimerInterval:interval actionBlock:^(id object, YZHTimer *timer) {
        NSLog(@"timer=%@,time=%f,thread=%@",timer,[timer elapseTime],[NSThread currentThread]);
    }];
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self _test];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
