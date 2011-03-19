//
//  HelloWorldLayer.h
//  AirHop
//
//  Created by Mario Gonzalez on 3/17/11.
//  Copyright Ogilvy & Mather 2011. All rights reserved.
//


// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"
#import "Box2D.h"
#import "GLES-Render.h"

// HelloWorldLayer
@interface HelloWorldLayer : CCLayer
{
	b2World* world;
	GLESDebugDraw *m_debugDraw;
}

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

// adds a new sprite at a given coordinate
-(void) addNewSpriteWithCoords:(CGPoint)p;
-(void) initializeWorldWithFrame:(CGRect)aFrame;

@end
