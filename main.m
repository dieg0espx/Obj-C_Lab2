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
        
        Box *ans = [[Box alloc] init];
        ans.myWidth = user_widht;
        ans.myHeigth = user_height;
        ans.myLength = user_lenght;
        NSLog(@"%.2f", ans.myWidth*ans.myHeigth*ans.myLength);
        
        
        Box *ans2 = [[Box alloc] initWithMyWidth:ans.myWidth andMyHeigth:ans.myHeigth andMyLength:ans.myLength];
        float sol = [ans2 timesFitInside:10 andH:10 andL:10];
        NSLog(@"%.2f", sol);
    }
    return 0;
}
