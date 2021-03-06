//
//  NewPostViewController.m
//  mvcPosts
//
//  Created by Jason Koceja on 9/10/13.
//  Copyright (c) 2013 Jason Koceja. All rights reserved.
//

#import "NewPostViewController.h"

@interface NewPostViewController ()

@end

@implementation NewPostViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // customize
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _emptyPost = nil;
    _MIN_LENGTH = 5;
    NSLog(@"NewPostViewController has %d objects from segue", [_postArray count]);
    
}

-(BOOL)makeNewPost{
    
    if ([_titleInput.text length] > _MIN_LENGTH && [_usernameInput.text length] > _MIN_LENGTH && [_contentInput.text length] > _MIN_LENGTH){
        _emptyPost = [Post postWithTitle:_titleInput.text];
        _emptyPost.username = _usernameInput.text;
        _emptyPost.content = _contentInput.text;
        NSLog(@"makeNewPost was callled");
        
        return YES;
    }
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Oops!" message:@"Please enter a title, username, and a complete post" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
    return NO;
}

- (IBAction)postNewPost:(id)sender {
    
    [self makeNewPost];
    
    
    if(_emptyPost){
        [self.navigationController popToRootViewControllerAnimated:YES];
        [_postArray addObject:_emptyPost];
        NSLog(@"The post %@ was created", _emptyPost.title);
        NSLog(@"The array has %d objects", [_postArray count]);
    }else{
        
        NSLog(@"No post created");
        //    NSLog(@"NewPostView - first post: %@", _postArray[0]);
    }
}
@end
