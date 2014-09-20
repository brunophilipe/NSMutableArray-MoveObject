NSMutableArray-MoveObject
=========================

Addition to NSMutableArray to perform task required by -tableView:moveRowAtIndexPath:toIndexPath: on single section UITableViews.

To use, simply include the header file:
```objc
#import <NSMutableArray+MoveObject.h>
```
And inside the `UITableViewDelegate` method, call:
```objc
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
{
	[myArray moveObjectFromIndex:sourceIndexPath.row toIndex:destinationIndexPath.row];
}
```
