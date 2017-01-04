//
//  SecondViewController.m
//  CakeStory
//
//  Created by shaggy on 06/12/16.
//  Copyright © 2016 shaggy. All rights reserved.
//

#import "SecondViewController.h"
#include "ViewController.h"
#include "FlvCell.h"

@interface SecondViewController ()
{
    NSArray *mainArr;
    IBOutlet UITableView *mainTableView;
    IBOutlet UIView *mainTableViewContainer;
    IBOutlet UIView *flvView;
    BOOL isButton1Selected;
    BOOL isButtonHalfSelected;
    BOOL isButtonPSelected;
    BOOL isButtonDSelected;
    BOOL isButtonPHSelected;
    BOOL isButtonSPSelected;
    
    NSMutableDictionary *OnekgDict;
}
@end
@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    mainArr = @[@"Black Forest",@"White Forest",@"Pinapple",@"Strawberry",@"ButterScotch",@"Choclate",@"Vanila Choclate",@"Vanila Choco Chips",@"Mango Choclate",@"Irish Coffy",@"Peach Apricot",@"Blueberry",@"Lichi",@"Cranberry",@"Pista",@"MixFruit"];

    //OnekgDict = [[NSMutableDictionary alloc] init];
                               
                               
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return mainArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    FlvCell *myCell = [tableView dequeueReusableCellWithIdentifier:@"flvCell"] ;
    
    if (!myCell) {
        [tableView registerNib:[UINib nibWithNibName:@"FlvCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"flvCell"];
    }
    
    if (indexPath.section == 0) {
        myCell.flvLabel.text = mainArr[indexPath.row];
    }
    
    return myCell;
    
}


-(IBAction)OneButtonClicked:(UIButton *)sender {
    if (isButton1Selected) {
        UIImage *img = [UIImage imageNamed:@"front.png"];
        [sender setBackgroundImage: img forState:UIControlStateNormal];
        isButton1Selected = NO;
        

    }
    else {
        UIImage *img = [UIImage imageNamed:@"down.png"];
        [sender setBackgroundImage:img forState:UIControlStateNormal];
        isButton1Selected = YES;
        mainTableViewContainer.hidden = NO;

        
        CGRect f = self->mainTableViewContainer.frame;
        f.origin.x = 0; // new x
        f.origin.y = 135; // new y
        self->mainTableViewContainer.frame = f;
    }
}

-(IBAction)HalfButtonClicked:(UIButton *)sender {
    if (isButtonHalfSelected) {
        UIImage *img = [UIImage imageNamed:@"front.png"];
        [sender setBackgroundImage: img forState:UIControlStateNormal];
        isButtonHalfSelected = NO;
        
       // mainTableViewContainer.hidden = YES;
        
    }
    else {
        UIImage *img = [UIImage imageNamed:@"down.png"];
        [sender setBackgroundImage:img forState:UIControlStateNormal];
        isButtonHalfSelected = YES;
        
        mainTableViewContainer.hidden = NO;
        
        CGRect f = self->mainTableViewContainer.frame;
        f.origin.x = 0; // new x
        f.origin.y = 185; // new y
        self->mainTableViewContainer.frame = f;
        
    }
}

-(IBAction)PestryButtonClicked:(UIButton *)sender {
    if (isButtonPSelected) {
        UIImage *img = [UIImage imageNamed:@"front.png"];
        [sender setBackgroundImage: img forState:UIControlStateNormal];
        isButtonPSelected = NO;
        
        //mainTableViewContainer.hidden = YES;
        
    }
    else {
        UIImage *img = [UIImage imageNamed:@"down.png"];
        [sender setBackgroundImage:img forState:UIControlStateNormal];
        isButtonPSelected = YES;
        
        mainTableViewContainer.hidden = NO;
        CGRect f = self->mainTableViewContainer.frame;
        f.origin.x = 0; // new x
        f.origin.y = 255; // new y
        self->mainTableViewContainer.frame = f;
    }

}

-(IBAction)DallButtonClicked:(UIButton *)sender {
    if (isButtonDSelected) {
        UIImage *img = [UIImage imageNamed:@"add.png"];
        [sender setBackgroundImage: img forState:UIControlStateNormal];
        isButtonDSelected = NO;
        

        
    }
    else {
       // UIImage *img = [UIImage imageNamed:@"minus.png"];
        //[sender setBackgroundImage:img forState:UIControlStateNormal];
        isButtonDSelected = YES;
        flvView.hidden = NO;
        CGRect f = self->flvView.frame;
        f.origin.x = 0; // new x
        f.origin.y = 320; // new y
        self->flvView.frame = f;

}
}

-(IBAction)PhotoButtonClicked:(UIButton *)sender {
    if (isButtonPHSelected) {
        UIImage *img = [UIImage imageNamed:@"add.png"];
        [sender setBackgroundImage: img forState:UIControlStateNormal];
        isButtonPHSelected = NO;
        
        //flvView.hidden = YES;
    }
    else {
       // UIImage *img = [UIImage imageNamed:@"minus.png"];
        // [sender setBackgroundImage:img forState:UIControlStateNormal];
        isButtonPHSelected = YES;
        flvView.hidden = NO;
        CGRect f = self->flvView.frame;
        f.origin.x = 0; // new x
        f.origin.y = 390; // new y
        self->flvView.frame = f;

    }
   
}

-(IBAction)SpecialButtonClicked:(UIButton *)sender {
    if (isButtonSPSelected) {
        UIImage *img = [UIImage imageNamed:@"add.png"];
        [sender setBackgroundImage: img forState:UIControlStateNormal];
        isButtonSPSelected = NO;
        
        //flvView.hidden = YES;

        
    }
    else {
       // UIImage *img = [UIImage imageNamed:@"minus.png"];
       // [sender setBackgroundImage:img forState:UIControlStateNormal];
        
        isButtonSPSelected = YES;
        flvView.hidden = NO;
        CGRect f = self->flvView.frame;
        f.origin.x = 0; // new x
        f.origin.y = 450; // new y
        self->flvView.frame = f;


    }

}

-(IBAction)okClicked:(UIButton *)sender {
    mainTableViewContainer.hidden = YES;
}
-(IBAction)doneClicked:(UIButton *)sender {
    flvView.hidden = YES;

}


-(IBAction)SubmitClicked:(UIButton *)sender {
    
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
