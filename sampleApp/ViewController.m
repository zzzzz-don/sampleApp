//
//  ViewController.m
//  sampleApp
//
//  Created by 石井 秀彦 on 2015/10/11.
//  Copyright (c) 2015年 don. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"Hello World!!");
    labelBmiTitle.hidden = YES;
    lavelBmiValue.hidden = YES;
    lavelBmiText.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (BOOL)textFieldShouldReturn:(UITextField*)textField {
//    [textField resignFirstResponder];
//    return YES;
//}

- (IBAction)calcBmi {
    float height = [tfHeight.text floatValue] / 100;
    float weight = [tfWeight.text floatValue];
    float bmiValue = weight / (height*height);
    
    lavelBmiValue.text = [[NSString alloc] initWithFormat:@"%.2f", bmiValue];
    
    if (bmiValue < 17.6) {
        lavelBmiValue.text = @"やせ過ぎです";
    } else if (bmiValue < 19.8) {
        lavelBmiValue.text = @"やせ気味です";
    } else if (bmiValue < 24.2) {
        lavelBmiValue.text = @"標準的な体重です";
    } else if (bmiValue < 26.4) {
        lavelBmiValue.text = @"太り気味です";
    } else {
        lavelBmiValue.text = @"肥満です";
    }
    
    labelBmiTitle.hidden = NO;
    lavelBmiText.hidden = NO;
    lavelBmiValue.hidden = NO;
}

@end
