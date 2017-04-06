//
//  ViewController.m
//  SoundTest
//
//  Created by Sirawat Pitaksarit on 4/5/17.
//  Copyright © 2017 Exceed7 Experiments. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [[AVAudioSession sharedInstance] setPreferredIOBufferDuration: 0.0001 error:nil];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Construct URL to sound file
    NSString *path = [NSString stringWithFormat:@"%@/HitSound.wav", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    //NSURL *tapSound   = [[NSBundle mainBundle] URLForResource: @"HitSound"
     //                                           withExtension: @"wav"];
    
    // Create audio player object and initialize with URL to sound
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundUrl, &mySound);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)touchDown:(id)sender {
    [_audioPlayer stop];
    [_audioPlayer setCurrentTime:0];
    [_audioPlayer play];
    //AudioServicesPlaySystemSound(mySound);
}


@end
