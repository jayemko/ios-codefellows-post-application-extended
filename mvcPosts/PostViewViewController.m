//
//  PostViewViewController.m
//  mvcPosts
//
//  Created by Jason Koceja on 9/10/13.
//  Copyright (c) 2013 Jason Koceja. All rights reserved.
//

#import "PostViewViewController.h"

@interface PostViewViewController ()

@end

@implementation PostViewViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.title = _post.title;
    _usernameLabel.text = _post.username;
    _dateLabel.text = _post.timeStamp;
    _contentLabel.text = _post.content;
    
}

@end
