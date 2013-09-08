//
//  ToursViewController.m
//  TourDeck
//
//  Created by Leonardo Correa on 9/3/13.
//  Copyright (c) 2013 Unboxed Labs. All rights reserved.
//

#import "ToursViewController.h"
#import "TourGuideCell.h"
#import "TourGuide.h"
#import "TourProfileDetailViewController.h"

@interface ToursViewController () {
    NSMutableArray *_guides;
}

@end

@implementation ToursViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:NO animated:YES];

    // TODO: set navbar with current tab title

    NSArray *tours = @[
                       @{@"firstName": @"Leo",
                         @"lastName": @"Cor",
                         @"photoPath":@"leo.png",
                         @"headline":@"Professional bedrester.",
                         @"location":@"Miami, FL"
                        },
                       @{@"firstName": @"David",
                         @"lastName": @"Small",
                         @"photoPath":@"leo.png",
                         @"headline":@"THE man.",
                         @"location":@"Cleveland, OH"
                        },
                       @{@"firstName": @"Minnie",
                         @"lastName": @"Walker",
                         @"photoPath":@"leo.png",
                         @"headline":@"Talented.",
                         @"location": @"Gatlinburg, TN"
                        },
                       @{@"firstName": @"Adria",
                         @"lastName": @"Gomez",
                         @"photoPath":@"leo.png",
                         @"headline":@"Whatchu call me?",
                         @"location": @"Miami, FL"
                        }
    ];
    _guides = [[NSMutableArray alloc] init];

    for (NSDictionary *guide in tours) {
        TourGuide *profile = [[TourGuide alloc] initWithDictionary:guide];
        [_guides addObject:profile];
    }


    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [_guides count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"TourGuideCell";
    TourGuideCell *cell = (TourGuideCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    TourGuide *guide= _guides[indexPath.row];
    
    cell.tourGuideName.text = [guide getFullName];
    cell.tourGuidePhoto.image = [UIImage imageNamed:guide.photoPath];
    cell.tourGuideHeadline.text = guide.headline;
    
    return cell;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"tourProfileDetail"])
    {
        // get selected guide index path
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        TourProfileDetailViewController *controller = (TourProfileDetailViewController *)segue.destinationViewController;
        controller.tourGuide = [_guides objectAtIndex:indexPath.row];
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
