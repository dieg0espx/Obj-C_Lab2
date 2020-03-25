//
//  main.m
//  Lab2.1
//
//  Created by Diego Espinosa on 2020-03-24.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

float getUserInput(int maxLenght, NSString *prompt){
    if (maxLenght < 1){
        maxLenght = 255;
    }
    NSLog(@"%@", prompt);
    char inputChars[maxLenght];
    char *result = fgets(inputChars, maxLenght, stdin);
    if(result != NULL){
        NSString *theString = [[NSString stringWithUTF8String:inputChars]stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        return [theString floatValue];
    }
    return 0.0;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        float user_height = getUserInput(255, @"Enter the Height");
        float user_widht = getUserInput(255, @"Enter the Width");
        float user_lenght = getUserInput(255, @"Enter the Lenght");
        
        Box *box = [[Box alloc] init];
        box.myWidth = user_widht;
        box.myHeigth = user_height;
        box.myLength = user_lenght;
        
        
        Box *ans1 = [[Box alloc] init];
        float sol1 =[ans1 theVolumen:box.myWidth andH1:box.myHeigth andL1:box.myLength];
        NSLog(@"%.2f", sol1);
        
        
        Box *ans2 = [[Box alloc] initWithMyWidth:box.myWidth andMyHeigth:box.myHeigth andMyLength:box.myLength];
        float sol2 = [ans2 timesFitInside:10 andH:10 andL:10];
        NSLog(@"%.2f", sol2);
    }
    return 0;
}
