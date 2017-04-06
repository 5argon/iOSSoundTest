//
//  ViewController.h
//  SoundTest
//
//  Created by Sirawat Pitaksarit on 4/5/17.
//  Copyright © 2017 Exceed7 Experiments. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController
{
    AVAudioPlayer *_audioPlayer;
    SystemSoundID mySound;
}

@end

