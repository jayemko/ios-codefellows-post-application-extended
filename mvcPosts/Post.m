//
//  Post.m
//  mvcPosts
//
//  Created by Jason Koceja on 9/10/13.
//  Copyright (c) 2013 Jason Koceja. All rights reserved.
//

#import "Post.h"

@implementation Post

- (id)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    
    if(!self){
        return nil;
    }
    
    self.title = [aDecoder decodeObjectForKey:@"Title"];
    self.username = [aDecoder decodeObjectForKey:@"Username"];
    self.content = [aDecoder decodeObjectForKey:@"Content"];
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder{
    
    [aCoder encodeObject:self.title forKey:@"Title"];
    [aCoder encodeObject:self.username forKey:@"Username"];
    [aCoder encodeObject:self.content forKey:@"Content"];
}

- (id)initWithTitle:(NSString *)title{
    self = [super init];
    
    if(self){
        _title = title;
        _username = nil;
        _content = nil;
        NSDate *date = [[NSDate alloc] initWithTimeIntervalSinceNow:0] ;
        _timeStamp = [self formattedDate:date];
    }
    //    NSLog(@"Post: %@", self.title);
    return self;
}

+ (id)postWithTitle:(NSString *)title{
    return [[self alloc] initWithTitle:title];
}

- (NSString *)formattedDate:(NSDate *)date{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    [dateFormatter setDateFormat:@"EE MMM,dd"];
    return [dateFormatter stringFromDate:date];
}

@end
