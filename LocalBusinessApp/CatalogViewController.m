//
//  CatalogViewController.m
//  LocalBusinessApp
//
//  Created by Ryan Holinshead on 2014-09-02.
//  Copyright (c) 2014 Ryan Holinshead. All rights reserved.
//

#import "CatalogViewController.h"


@interface CatalogViewController (){
    // Define an array for the pictures in the view
    NSArray *businessPhotos;
}

@end

@implementation CatalogViewController

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
    
    // Initialize businessPhoto array with images (will need to initialize with values in API later)
    businessPhotos = [NSArray arrayWithObjects:@"tire1.jpg", @"tire2.jpg",@"tire3.jpg",@"tire4.jpg",@"tire5.jpg",@"tire6.jpg",@"tire7.jpg",@"tire8.jpg",@"tire9.jpg",@"tire10.jpg", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return businessPhotos.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"Cell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    // Change UIIMageView to UIView after changing Image to View on storyboard for API
    UIImageView *catalogView = (UIImageView *)[cell viewWithTag:100];
    catalogView.image = [UIImage imageNamed:[businessPhotos objectAtIndex:indexPath.row]];
    
    return cell;
}





/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
