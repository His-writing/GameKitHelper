//
//  ViewController.m
//  GameKitHelper
//
//  Created by shuzhenguo on 16/1/15.
//  Copyright © 2016年 shuzhenguo. All rights reserved.
//

#import "ViewController.h"
#import "GameKitHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [GameKitHelper sharedHelper];
    
    
    UIButton *LeaderboardButton=[UIButton buttonWithType:UIButtonTypeCustom];
    LeaderboardButton.frame=CGRectMake(50, 40, 90, 40);
    [LeaderboardButton setTitle:@"排行榜" forState:UIControlStateNormal];
    [LeaderboardButton addTarget:self action:@selector(LeaderboardClick) forControlEvents:UIControlEventTouchUpInside];
    LeaderboardButton.backgroundColor=[UIColor redColor];
    [self.view addSubview:LeaderboardButton];
    
    
    
    UIButton *AchievementsButton=[UIButton buttonWithType:UIButtonTypeCustom];
    AchievementsButton.frame=CGRectMake(50, 100, 90, 40);
    [AchievementsButton setTitle:@"全部成就" forState:UIControlStateNormal];
    [AchievementsButton addTarget:self action:@selector(AchievementsClick) forControlEvents:UIControlEventTouchUpInside];
    AchievementsButton.backgroundColor=[UIColor redColor];
    
    [self.view addSubview:AchievementsButton];
    
    
    
    UIButton *AchievementButton=[UIButton buttonWithType:UIButtonTypeCustom];
    AchievementButton.frame=CGRectMake(50, 160, 90, 40);
    [AchievementButton setTitle:@"成就" forState:UIControlStateNormal];
    [AchievementButton addTarget:self action:@selector(AchievementClick) forControlEvents:UIControlEventTouchUpInside];
    AchievementButton.backgroundColor=[UIColor redColor];
    
    [self.view addSubview:AchievementButton];
    
    
    UIButton *NotificationButton=[UIButton buttonWithType:UIButtonTypeCustom];
    NotificationButton.frame=CGRectMake(50, 210, 90, 40);
    [NotificationButton setTitle:@"通知" forState:UIControlStateNormal];
    [NotificationButton addTarget:self action:@selector(NotificationButtonClick) forControlEvents:UIControlEventTouchUpInside];
    NotificationButton.backgroundColor=[UIColor redColor];
    
    [self.view addSubview:NotificationButton];
    
    
    UIButton *LeaderboardScoreButton=[UIButton buttonWithType:UIButtonTypeCustom];
    LeaderboardScoreButton.frame=CGRectMake(50, 270, 90, 40);
    [LeaderboardScoreButton setTitle:@"排行榜分数" forState:UIControlStateNormal];
    [LeaderboardScoreButton addTarget:self action:@selector(LeaderboardScoreClick) forControlEvents:UIControlEventTouchUpInside];
    LeaderboardScoreButton.backgroundColor=[UIColor redColor];
    [self.view addSubview:LeaderboardScoreButton];
    

}
//排行榜
-(void)LeaderboardClick
{
    [[GameKitHelper sharedHelper] showLeaderboard:@"grp.FruitStorm1_1"];
    
}

-(void)AchievementsClick{
    
    [[GameKitHelper sharedHelper] showAchievements];
    
    
}

-(void)AchievementClick{
    
    [[GameKitHelper sharedHelper] reportAchievement:@"grp.FruitStormAchievement1" percentComplete:100.0f];
    
    
}

-(void)NotificationButtonClick{
    
    
    
    [[GameKitHelper sharedHelper] showNotification:@"Notification Title" message:@"Some Message" identifier:@"grp.FruitStormAchievement3"];
    
    
}

-(void)LeaderboardScoreClick
{
    
    [[GameKitHelper sharedHelper] reportScore:2000 forLeaderboard:@"grp.FruitStorm1_1"];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
