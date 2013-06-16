//
//  NSDictionary+LetterRecognitionFromLocus.h
//  Kirapika
//
//  Created by Justin Jia on 1/24/13.
//  Copyright (c) 2013 Justin Jia. All rights reserved.
//

typedef enum{
    LetterC = 0,
    LetterS = 1,
    LetterR = 2,
    LetterM = 3,
}RecognizedMarkType;

@interface NSNumber (RecognizedMark)

- (RecognizedMarkType)mark;

@end
