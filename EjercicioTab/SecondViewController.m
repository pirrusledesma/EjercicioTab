//
//  SecondViewController.m
//  EjercicioTab
//
//  Created by Ileana Padilla on 3/12/14.
//  Copyright (c) 2014 paul. All rights reserved.
//

#import "SecondViewController.h"

NSString *str_arrayTitles[10] = {@"Naomi",@"Arena",@"Ileana",@"Daniela",@"Cinthia",@"Norma",@"Regina",@"Mariana",@"Sara",@"Karina"};

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)numberOfComponentsInPickerView:
(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component{
    return 10;
}

-(NSString *)pickerView:(UIPickerView *)pickerView
            titleForRow:(NSInteger)row
           forComponent:(NSInteger)component
{
    return str_arrayTitles[row];
}

#pragma mark-
#pragma mark PickerView DataSource

-(CGFloat)pickerView:(UIPickerView *)pickerView
rowHeightForComponent:(NSInteger)component
{
    return 40;
}


@end
