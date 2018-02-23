//
//  ViewController.m
//  MQTest
//
//  Created by Lyson on 2018/2/23.
//  Copyright © 2018年 MQTest. All rights reserved.
//

#import "ViewController.h"
#import "LSMQMessageListManager.h"
#import "TestViewController.h"
@interface ViewController ()<LSMQTopicReceiveProtocol>

@end

@implementation ViewController

-(void)topicReceive:(id)msg topic:(NSString *)topic{
    
    NSLog(@"msg : %@ topic : %@",msg,topic);
    
}



-(IBAction)send:(id)sender{
    
    
    NSString *text = textFeild.text;
    
    [[LSMQMessageListManager shareInstance] addMsg:text topic:@"testwTopic"];
    
}

-(IBAction)next:(id)sender{
    
    TestViewController *viewctrl = [[TestViewController alloc] initWithNibName:@"TestViewController" bundle:nil
                                 ];
    
    [self.navigationController pushViewController:viewctrl animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[LSMQMessageListManager shareInstance] addTopic:(id<LSMQTopicReceiveProtocol>)self topic:@"testwTopic"];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
