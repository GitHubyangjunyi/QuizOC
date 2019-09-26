//
//  BNRQuizViewController.m
//  QuizOC
//
//  Created by 杨俊艺 on 2019/9/25.
//  Copyright © 2019 杨俊艺. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic) int currentQuestionIndex;

// MARK: 模型对象
@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

// MARK: 关联到视图对象的插座变量
@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation BNRQuizViewController

// MARK: 动作对
-(IBAction)showQuestion:(id)sender
{
    self.currentQuestionIndex++;
    
    //是否回答完所有问题
    if (self.currentQuestionIndex == [self.questions count]) {
        self.currentQuestionIndex = 0;
    }
    
    //根据正在回答的问题序号从数组从取出问题字符串
    NSString *question = self.questions[self.currentQuestionIndex];
    self.questionLabel.text = question;
    self.answerLabel.text = @"????";
}

-(IBAction)showAnswer:(id)sender
{
    NSString *answer = self.answers[self.currentQuestionIndex];
    self.answerLabel.text = answer;
}

// MARK: 视图控制器初始化方法
-(instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.questions = @[@"From what",
                           @"What is",
                           @"What is the captal"];
        self.answers =  @[@"Grapes",
                          @"14",
                          @"Montpelier"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
