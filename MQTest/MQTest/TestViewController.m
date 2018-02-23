//
//  TestViewController.m
//  MQTest
//
//  Created by Lyson on 2018/2/23.
//  Copyright © 2018年 MQTest. All rights reserved.
//

#import "TestViewController.h"
#import "LSMQMessageListManager.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)click:(id)sender{
    
    NSString *text = textFeild.text;
    
    [[LSMQMessageListManager shareInstance] addMsg:text topic:@"testwTopic"];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
