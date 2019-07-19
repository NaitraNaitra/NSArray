//
//  main.m
//  NSARRAY]
//
//  Created by Maxi on 18/07/2019.
//  Copyright © 2019 Naitra. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray * officeSupplies = @[@"Pencils", @"Paper"];
        NSLog(@"First : %@", officeSupplies[0]);
        NSLog(@"Office Supplies %@", officeSupplies);
        
        
        
        BOOL containsItem = [officeSupplies containsObject:@"Pencils"]; //bool does it contain pencils
        NSLog(@"Contains Pencils? : %d", containsItem);
        
        NSLog(@"Total in array : %d",(int)[officeSupplies count]); //count of array in INT
        
        NSLog(@"Index of pencils is at %lu", (unsigned long)[officeSupplies indexOfObject:@"Pencils"]); //where is index you must cast it
        
        NSMutableArray *heroes = [NSMutableArray arrayWithCapacity:5];
        [heroes addObject:@"Batman"];
        [heroes addObject:@"Flash"];
        [heroes addObject:@"Wonder Woman"];
        [heroes addObject:@"Kid Flash"];
        
        [heroes insertObject:@"Superman" atIndex:2]; //automatically moves the rest down doesnt overwrite
        
        NSLog(@"%@", heroes);
        
        
        
        /*************Remove Object***************/
        [heroes removeObject:@"Flash"];
        [heroes removeObjectAtIndex:0]; //specific object
        [heroes removeObjectIdenticalTo:@"Superman" inRange:NSMakeRange(0, 1)];
        
        for (int i = 0; i < [heroes count]; i++) {
            NSLog(@"%@", heroes[i]);
        }
        
        
        
    }
    return 0;
}
