//
//  MyScene.m
//  DoodgeKing
//
//  Created by Lei Wang on 12/7/13.
//  Copyright (c) 2013 Lei Wang. All rights reserved.
//

#import "MyScene.h"

//1. create private interface to app, so that we can create private viriable such as player
@interface MyScene ()
@property (nonatomic) SKSpriteNode * player;
@end

@implementation MyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        //2. logout size of the scene
        NSLog(@"Size: %@", NSStringFromCGSize(size));
        //3. set background color
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];//white
        
        //4
        self.player = [SKSpriteNode spriteNodeWithImageNamed:@"player"];
        self.player.position = CGPointMake(100, 100);
        [self addChild:self.player];
        //SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        
        //myLabel.text = @"Hello, World!";
        //myLabel.fontSize = 30;
        //myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
        //                               CGRectGetMidY(self.frame));
        
        //[self addChild:myLabel];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        sprite.position = location;
        
        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
        
        [sprite runAction:[SKAction repeatActionForever:action]];
        
        [self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
