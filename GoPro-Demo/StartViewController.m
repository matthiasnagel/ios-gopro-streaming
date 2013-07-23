//
//  StartViewController.m
//  GoPro-Demo
//
//  Created by Matthias Nagel on 31.05.13.
//  Copyright (c) 2013 Matthias Nagel Mobile Consulting. All rights reserved.
//

#import "StartViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface StartViewController ()

@end

@implementation StartViewController

- (id)init
{
    self = [super init];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    MPMoviePlayerController *player = [[MPMoviePlayerController alloc] initWithContentURL:[NSURL URLWithString:@"http://10.5.5.9:8080/live/amba.m3u8"]];
    [player prepareToPlay];
    player.view.frame = self.view.bounds;
    [self.view addSubview:player.view];
    [player play];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
