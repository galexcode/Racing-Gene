//
//  CGroupNode.m
//  Racing Gene
//
//  Created by Jonathan Wight on 01/31/11.
//  Copyright 2011 toxicsoftware.com. All rights reserved.
//

#import "CSceneGroup.h"

#import "CSceneNode.h"

@implementation CSceneGroup

@synthesize nodes;

- (void)dealloc
    {
    [nodes release];
    nodes = NULL;
    //
    [super dealloc];
    }

- (void)render:(CSceneGraphRenderer *)inRenderer
    {
    for (CSceneNode *theNode in self.nodes)
        {
        [theNode render:inRenderer];
        }
    }

@end
