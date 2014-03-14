//
//  ThirdViewController.m
//  EjercicioTab
//
//  Created by Ileana Padilla on 3/12/14.
//  Copyright (c) 2014 paul. All rights reserved.
//

#import "ThirdViewController.h"



@interface ThirdViewController (){
NSMutableArray *iArray;
    NSMutableArray *names;
}
@end

@implementation ThirdViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    iArray=[[NSMutableArray alloc]initWithObjects:@"auditt.jpeg",@"audir8.jpeg",@"audiq7.jpeg",@"audiq5.jpeg", nil];
    names = [[NSMutableArray alloc]initWithObjects:@"Audi TT",@"Audi R8",@"Audi Q7",@"Audi Q5", nil];
    
    for(int i=0;i<[iArray count];i++)
    {
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:frame];
        imageView.image = [UIImage imageNamed:[iArray objectAtIndex:i]];
        [self.scrollView addSubview:imageView];
        
        UILabel *label = [[UILabel alloc]initWithFrame:frame];
        label.text=[NSString stringWithFormat:@"%@",names[i]];
        label.textColor = [UIColor redColor];
        [self.scrollView addSubview:label];
    }
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * [iArray count], self.scrollView.frame.size.height);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIScrollView Delegate
-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat pageWidth = self.scrollView.frame.size.width;
    int page = floor((self.scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    self.pageControl.currentPage = page;
    NSLog(@"page = %d",page);
}

@end
