//
//  ViewController.m
//  CakeStory
//
//  Created by shaggy on 06/12/16.
//  Copyright © 2016 shaggy. All rights reserved.
//

#import "ViewController.h"
#import "MyCell.h"

@interface ViewController ()
{
    NSArray *arrList;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    arrList = @[@"HADAPSAR",@"WAKAD",@"JEJURI",@"LONAND"];


}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return arrList.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    MyCell *myCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
    
    if (!myCell) {
        myCell = [[MyCell alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    }
    
    myCell.lblName.text = arrList[indexPath.row];
    
    //    myCell.myImageView.image = [UIImage imageNamed:[arrData objectAtIndex:indexPath.row]]
    
    return myCell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
