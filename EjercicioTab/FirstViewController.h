//
//  FirstViewController.h
//  EjercicioTab
//
//  Created by Ileana Padilla on 3/12/14.
//  Copyright (c) 2014 paul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *table;

@end
