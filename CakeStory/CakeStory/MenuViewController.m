//
//  MenuViewController.m
//  CakeStory
//
//  Created by shaggy on 09/12/16.
//  Copyright © 2016 shaggy. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()
{
    NSArray *mainArr;
}
@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    mainArr = @[@"Black Forest",@"White Forest",@"Pinapple",@"Strawberry",@"ButterScotch",@"Choclate",@"Vanila Choclate",@"Vanila Choco Chips",@"Mango Choclate",@"Irish Coffy",@"Peach Apricot",@"Blueberry",@"Lichi",@"Cranberry",@"Pista",@"MixFruit"];
    

}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return mainArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *myCell = [tableView dequeueReusableCellWithIdentifier:@"myCell"] ;
    
    if (!myCell) {
        myCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"myCell"];
    }
    
    if (indexPath.section == 0) {
        myCell.textLabel.text = mainArr[indexPath.row];
    }
    
    return myCell;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
