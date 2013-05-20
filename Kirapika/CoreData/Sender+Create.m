//
//  Sender+Create.m
//  kirakira pikapika
//
//  Created by Justin Jia on 1/20/13.
//  Copyright (c) 2013 Justin Jia. All rights reserved.
//

#import "CoreDataConstants.h"

@implementation Sender (Create)

+ (Sender *)senderWithData:(NSDictionary *)data inManagedObjectContext:(NSManagedObjectContext *)context
{
    Sender *sender = nil;
    
//    NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:@"Sender"];
//    fetchRequest.predicate = [NSPredicate predicateWithFormat:@"name = %@", [data objectForKey:SENDER_NAME]];
//    
//    //limit
//    //fetchRequest.fetchLimit = 100;
//    //fetchRequest.fetchBatchSize = 20;
//    
//    NSSortDescriptor *sortDescriptorByMessage = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
//    fetchRequest.sortDescriptors = [NSArray arrayWithObject:sortDescriptorByMessage];
//    
//    NSError *error;
//    NSArray *matches = [context executeFetchRequest:fetchRequest error:&error];
    
    NSArray *matches = [[[[context ofType:@"Sender"] where:@"%@ = %@", SENDER_NAME, [data objectForKey:SENDER_NAME]] orderBy:SENDER_NAME] toArray];
    
    if (matches.count > 1 || !matches) {
        NSLog(@"Error, handle it!");
    } else if (matches.count == 0) {
        sender = [NSEntityDescription insertNewObjectForEntityForName:@"Sender" inManagedObjectContext:context];
        sender.name = [data objectForKey:SENDER_NAME];
        sender.photoUrl = [data objectForKey:SENDER_PHOTOURL];
        sender.isLeftUser = [data objectForKey:SENDER_IS_LEFT_USER];
    } else {
        sender = [matches lastObject];
    }
    
    return sender;
}

@end
