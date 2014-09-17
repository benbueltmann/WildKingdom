//
//  ViewController.m
//  WildKingdom
//
//  Created by Ben Bueltmann on 8/7/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//
//    NSURL *urlLion =[NSURL URLWithString:@"https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=41494fe3a3fae3761ff1fc2292a2b51e&tags=lion&format=json&nojsoncallback=1&api_sig=d0df72dbb5aba13c1fda672015604faf"];
//    NSURL *urlTiger =[NSURL URLWithString:@"https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=41494fe3a3fae3761ff1fc2292a2b51e&tags=tiger&format=json&nojsoncallback=1&api_sig=d983acafbfc54b163f03cddb9ccf090b"];
//    NSURL *urlBear =[NSURL URLWithString:@"https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=41494fe3a3fae3761ff1fc2292a2b51e&tags=bear&format=json&nojsoncallback=1&api_sig=64bf6f3a4db5bb8be6dd759f1f21ec82"];

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController () 
@property NSMutableArray *bearsArray;
@property NSMutableArray *lionsArray;
@property NSMutableArray *tigersArray;
@property NSString *string;
@property NSMutableArray *arrayOfStrings;
@property NSDictionary *dict;
@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
//    self.title = @"Lions and Tigers and Bears, oh my!";
//
//    self.array = [NSArray new];
    self.bearsArray = [NSMutableArray new];
    self.lionsArray = [NSMutableArray new];
    self.tigersArray = [NSMutableArray new];
    NSLog(@"asdas");
    NSURL *urlBearsNFL =[NSURL URLWithString:@"https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=41494fe3a3fae3761ff1fc2292a2b51e&tags=chicago+bears+nfl&format=json&nojsoncallback=1&api_sig=58ea47659dba1e417753748bc4dcadf5" ];
    NSURLRequest * requestBears = [NSURLRequest requestWithURL:urlBearsNFL];
    [NSURLConnection sendAsynchronousRequest:requestBears queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError)
     {
//
//         NSDictionary *dict = [self.bearsArray objectAtIndex:0];
//         self.bearsArray = [[NSJSONSerialization JSONObjectWithData:data options:0 error:nil] objectForKey:@"photos"];
//         [self.bearsArray addObject:[dict objectForKey:@"photo"]];
//         NSLog(@"%@", [self.bearsArray objectAtIndex:0]);
//         self.string = [NSString stringWithFormat:@"https://farm%@.staticflickr.com/%@/%@_%@.jpg", [dict objectForKey:"farm"], [dict objectForKey:"server"], [dict objectForKey:"id"], [dict objectForKey:"secret"]];
//         [self.arrayOfStrings addObject: self.string];
     }];

    NSURL *urlLionsNFL =[NSURL URLWithString:@"https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=41494fe3a3fae3761ff1fc2292a2b51e&tags=detroit+lions+nfl&format=json&nojsoncallback=1&api_sig=64d1de7d70dbe01a5c89e4be7f4d5c3f"];

    NSURLRequest * requestLions = [NSURLRequest requestWithURL:urlLionsNFL];
    [NSURLConnection sendAsynchronousRequest:requestLions queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError)
     {
         self.dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
         [self.lionsArray addObject:[[self.dict objectForKey:@"photos"] objectForKey:@"photo"]];
         NSLog(@"%@", [self.lionsArray objectAtIndex:0]);
//         self.string = [NSString stringWithFormat:@"https://farm%@.staticflickr.com/%@/%@_%@.jpg", [self.lionsArray:@"farm"], [self.dict objectForKey:@"server"], [self.dict objectForKey:@"id"], [self.dict objectForKey:@"secret"]];
         [self.arrayOfStrings addObject: self.string];

     }];

    NSURL *urlBengalsNFL =[NSURL URLWithString:@"https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=41494fe3a3fae3761ff1fc2292a2b51e&tags=Cincinnati+bengals+nfl&format=json&nojsoncallback=1&api_sig=cacfa51245b62e11b1f7ff1dcd557e74"];

    NSURLRequest * requestTigers = [NSURLRequest requestWithURL:urlBengalsNFL];
    [NSURLConnection sendAsynchronousRequest:requestTigers queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError)
     {
         self.dict = [[NSJSONSerialization JSONObjectWithData:data options:0 error:nil] objectForKey:@"photos"];
         [self.tigersArray addObject:[self.dict objectForKey:@"photo"]];
         NSLog(@"%@", [self.tigersArray objectAtIndex:0]);
//         self.string = [NSString stringWithFormat:@"https://farm%@.staticflickr.com/%@/%@_%@.jpg", farmid, server-id, id, secret];
         [self.arrayOfStrings addObject: self.string];

     }];
}



@end
