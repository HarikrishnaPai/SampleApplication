//
//  CompanyDetailsController.h
//  SampleApplication
//
//  Created by Hari on 13/02/14.
//  Copyright (c) 2014 MyCompany. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CompanyDetailsController : UIViewController

@property (strong, nonatomic) IBOutlet UITableView *tblView;

@property (nonatomic, strong) NSString *companyName;


@end
