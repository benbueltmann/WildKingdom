//
//  TigersViewController.m
//  WildKingdom
//
//  Created by Ben Bueltmann on 8/8/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "TigersViewController.h"

@interface TigersViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@end

@implementation TigersViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //    CustomCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellView" forIndexPath:indexPath];
    //    return cell;
    return 0;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return nil;
}


@end
