//
//  FirstViewController.m
//  EjercicioTab
//
//  Created by Ileana Padilla on 3/12/14.
//  Copyright (c) 2014 paul. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController (){
    NSMutableArray *arreglo;
}

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    arreglo=[[NSMutableArray alloc]initWithObjects:@"Audi A1",@"Audi A3",@"Audi A4",@"Audi A5",@"Audi A6",@"Audi Q3",@"Audi Q5",@"Audi Q7",@"Audi TT",@"Audi R8", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark TableViewDataSource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    
    //Regresa el numero de secciones en la tabla
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    //regresa el numero de celdas en nuestra tabla
    return [arreglo count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text=[arreglo objectAtIndex:indexPath.row];
    
    return cell;
    
}


#pragma mark UITableViewDelegate

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}


@end
