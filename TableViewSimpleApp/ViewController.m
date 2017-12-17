//
//  ViewController.m
//  TableViewSimpleApp
//
//  Created by Антон Полуянов on 17/12/2017.
//  Copyright © 2017 Антон Полуянов. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController () <UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataSource;

@end

static int offset = 15;
static int imageWidth = 50;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    self.tableView.dataSource = self;
    self.dataSource = @[@{
                            @"Name":@"Anton",
                            @"Description": @"school",
                            @"Date":@"13.12.17"
                            },
                        @{
                            @"Name":@"ABC",
                            @"Description": @"school",
                            @"Date":@"13.12.17"
                            }
                        ];
    
    
    [self.tableView registerClass: [CustomTableViewCell class] forCellReuseIdentifier:@"uniqueID"] ;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"uniqueID"];
    NSDictionary *object = self.dataSource[indexPath.row];
    
    cell.labelName.text = object[@"Name"];
    cell.labelDescription.text = object[@"Description"];
    cell.labelDate.text = object[@"Date"];
    
    return cell;
}

@end
