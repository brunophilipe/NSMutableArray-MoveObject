//
//  NSMutableArray+MoveObject.m
//
//  Created by Bruno Philipe on 9/20/14.
//  Copyright (c) 2014 Bruno Philipe. All rights reserved.
//

#import "NSMutableArray+MoveObject.h"

@implementation NSMutableArray (MoveObject)

- (void)moveObjectFromIndex:(NSUInteger)fromIndex toIndex:(NSUInteger)toIndex
{
	if (fromIndex == toIndex) return;
	[self insertObject:[self objectAtIndex:fromIndex] atIndex:(fromIndex < toIndex ? toIndex + 1 : toIndex)];
	[self removeObjectAtIndex:(fromIndex > toIndex ? fromIndex + 1 : fromIndex)];
}

@end
