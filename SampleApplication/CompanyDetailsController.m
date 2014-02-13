//
//  CompanyDetailsController.m
//  SampleApplication
//
//  Created by Hari on 13/02/14.
//  Copyright (c) 2014 MyCompany. All rights reserved.
//

#import "CompanyDetailsController.h"

@interface CompanyDetailsController ()

@property (nonatomic, strong) NSArray *employeeNames;
@property (nonatomic, strong) NSArray *phoneNumbers;

@end

@implementation CompanyDetailsController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.employeeNames = @[ @"Employee 1", @"Employee 2", @"Employee 3", @"Employee 4", @"Employee 5" ];
        self.phoneNumbers = @[ @"12345678", @"12345678", @"12345678", @"12345678", @"12345678" ];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = self.companyName;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableView dataSource methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.employeeNames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1
                                      reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = [self.employeeNames objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [self.phoneNumbers objectAtIndex:indexPath.row];

    return cell;
}

@end
