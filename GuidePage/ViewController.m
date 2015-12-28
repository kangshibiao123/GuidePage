//
//  ViewController.m
//  GuidePage
//
//  Created by mc on 15/12/24.
//  Copyright © 2015年 kangshibiao. All rights reserved.
//

#import "ViewController.h"
#import "MyGuidePage.h"
@interface ViewController ()<MyGuidePageDelegata>

@end

@implementation ViewController

//- (void)viewWillAppear:(BOOL)animated{
//    
//    [super viewDidAppear:YES];
//    
//   
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor grayColor]
    ;
   
    if ([NEXTFIRST isEqualToString:@""]||NEXTFIRST == nil)
    {
     
        MyGuidePage * page =[[MyGuidePage alloc]initWithFrame:self.view.bounds arrImages:@[@"1.jpg",@"2.jpg",@"4.jpg"]];
        page.tag = 1222;
        
        page.delegata = self;
        
        [self.view addSubview:page];
    }
   
}
- (void)remoeviGUidePage {
    
    MyGuidePage * my = [self.view viewWithTag:1222];
    
    [my removeFromSuperview];
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
