//
//  SoloViewController.h
//  Kirapika
//
//  Created by Justin Jia on 4/7/13.
//  Copyright (c) 2013 Justin Jia. All rights reserved.
//

#import "MessagesViewController.h"
#import "HintView.h"

@interface SoloViewController : MessagesViewController

@property (nonatomic, weak) IBOutlet HintView *hint;

@end
