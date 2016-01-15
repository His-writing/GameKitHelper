
#import <Foundation/Foundation.h>
#import <GameKit/GameKit.h>

#ifndef ABGAMEKITHELPER_LOGGING
    #define ABGAMEKITHELPER_LOGGING 1
#endif

/**
 * Set SECRET_KEY for proper encryption
 */
#define SECRET_KEY @"MySecretKeyHere"

@interface GameKitHelper : NSObject

/**
 * Always access class through this singleton
 * Call it once on application start to authenticate local player
 */
+(id) sharedHelper;


/**
 * Leaderboards
 */
-(void) reportScore:(long long)aScore forLeaderboard:(NSString*)leaderboardId;
-(void) showLeaderboard:(NSString*)leaderboardId;


/**
 * Achievements
 */
-(void) reportAchievement:(NSString*)achievementId percentComplete:(double)percent;
-(void) showAchievements;
-(void) resetAchievements;


/**
 * Notifications
 */
-(void) showNotification:(NSString*)title message:(NSString*)message identifier:(NSString*)achievementId;


@property (nonatomic, assign, getter = isAuthenticated) BOOL authenticated;

@end
