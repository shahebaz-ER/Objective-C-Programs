//
//  UtilityClass.m
//  Utility Class
//
//  Created by BridgeLabz Solutions LLP on 25/02/17.
//  Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UtilityClass.h"
@implementation Utility
double starttime;
double stoptime;
double elapsetime;
bool running=false;

//  Binary Search Integer
-(int) binarySearchInt{
    int start = 0,N,i,key;
        NSLog(@"Enter the totall no of Element you want Insert=");
    scanf("%i",&N);
    int end = N- 1;
    int array[N];
    NSLog(@"Enter the  %i  Elements=",N);
    for (i = 0; i < N; i++)
    {scanf("%i",&array[i]);}
    NSLog(@"Enter th search key=");
    scanf("%i",&key);
    while (start <= end) {
        int mid = (start + end) / 2;
        if (key == array[mid]) {
            return mid;
        }
        if (key < array[mid]) {
            end = mid - 1;
        } else {
            start = mid + 1;
        }
    }
    return -1;
}

// Calling Binary Search Integer
-(void) callBinarySearchInt{
    Utility *u=[[Utility alloc]init];
    int position=[u binarySearchInt];
    if(position==-1)
    {
        NSLog(@"Not Found");
    }
    else
    {
        NSLog(@"Found at %i position",position);
    }
}
//  Binary Search String
-(int)binarySearchString:(NSMutableArray*)array arrayname:(NSString*)key{
    int first = 0;
    int last  = (int)[array count];
    
    while (first < last) {
        int mid = (first + last) / 2;
        if ([key compare:array[mid]] < 0) {
            last = mid;
        } else if ([key compare:array[mid]] > 0) {
            first = mid + 1;
        } else {
            return mid;
        }
    }
    return -1;
}
//// Calling Binary Search String
-(int)callBinarySearchString{
    char KeyName[20];
    NSMutableArray *array=[[NSMutableArray alloc]init];
    NSString *file= @"/Users/bridgelabz/Desktop/Shabby/BinarySearch/BinarySearch/File2";
    NSError *error;
    NSString *content=[NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:&error];
    array=(NSMutableArray*)[content componentsSeparatedByString:@"\n"];
    [array sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    NSLog(@"The Sorted Order is: ");
    NSLog(@"%@",array);
    NSLog(@"Enter Key: ");
    scanf("%s",KeyName);
    NSString *Key=[NSString stringWithFormat:@"%s",KeyName];
    Utility *b=[[Utility alloc]init];
    int p=[b binarySearchString:array arrayname:Key];
    
    if(p==-1)
    {
        
        NSLog(@"Not Found");
        
        
    }
    else
    {
        
        NSLog(@"Found at %i position",p);
    }
    
    return 0;
}

// Insertion Sort for Integer
-(void) insertionSortForInteger {
    int i, j, temp, N;
    NSLog(@"Enter the totall no of Element you want Insert=");
    scanf("%i",&N);
    int array[N];
    NSLog(@"Enter the  %i  Elements=",N);
    for (i = 0; i < N; i++)
        scanf("%i",&array[i]);
    for (i = 1; i < N; i++) {
        temp = array[i];
        for (j = i - 1; j >= 0 && temp < array[j]; j--) {
            array[j + 1] = array[j];
        }
        array[j + 1] = temp;
    }
    NSLog(@"Sorted Elements are:");
    for (i = 0; i < N; i++)
    {NSLog(@"%i",array[i]);}
}


// Insertion Sort for String
-(void) insertionSortForString {

int i, j, N;
char words[20];
NSString *temp=[[NSString alloc]init];
NSLog(@"Enter the totall no of Element you want Insert=");
scanf("%i",&N);
NSMutableArray *array = [[NSMutableArray alloc]init];
NSLog(@"Enter the  %i  Elements=",N);

for (i = 0; i < N; i++) {
    scanf("%s",words);
    NSString *name=[NSString stringWithFormat:@"%s",words];
    array[i]=name;
}

for (i = 1; i < N; i++) {
    temp = array[i];
    for (j = i - 1; j >= 0 && [temp caseInsensitiveCompare:array[j]] < 0; j--) {
        array[j + 1] = array[j];
    }
    array[j + 1] = temp;
}
NSLog(@"Sorted Elements are:");
NSLog(@"%@",array);
}

// Bubble sort for Integer
-(void) bubbleSortInteger{
    int i,j,N,temp;
    NSLog(@"Enter the totall no. of element you want to sort=");
    scanf("%i",&N);
    int array[N];
    NSLog(@"Enter the %i elements=",N);
    for(i=0;i<N;i++)
    {scanf("%i",&array[i]);}
    for(i=0;i<N;i++)         //sorting the array
    {
        for(j=i+1;j<N;j++)
        {
            if(array[i]>array[j])
            {
                temp=array[i];
                array[i]=array[j];
                array[j]=temp;
            }
        }
    }
    NSLog(@"The sorted order is:");
    
    for(i=0;i<N;i++)
    {
        if(!(array[i]==0))
            NSLog(@"%i",array[i]);		//printing the sorted array
    }
    
}
// Bubble sort for String
-(void) bubbleSortString{
        
    int i, j, N;
    char words[20];
    NSString *temp=[[NSString alloc]init];
    NSLog(@"Enter the totall no of Element you want Insert=");
    scanf("%i",&N);
    NSMutableArray *array = [[NSMutableArray alloc]init];
    NSLog(@"Enter the  %i  Elements=",N);
    NSLog(@"Enter the %i elements=",N);
    for (i = 0; i < N; i++) {
        scanf("%s",words);
        NSString *name=[NSString stringWithFormat:@"%s",words];
        array[i]=name;
    }
    for(i=0;i<N;i++)         //sorting the array
    {
        for(j=i+1;j<N;j++)
        {
            if(array[i]>array[j])
            {
                temp=array[i];
                array[i]=array[j];
                array[j]=temp;
            }
        }
    }
    NSLog(@"The sorted order is:");
    
    NSLog(@"Sorted Elements are:");
    NSLog(@"%@",array);
    
}
//start the stopwatch
-(void)starttime
{
    NSTimeInterval timeinsec=[[NSDate date] timeIntervalSince1970];
    starttime=timeinsec;
    running=true;
}

//stop the stopwatch
-(void)stoptime
{
    NSTimeInterval timeinsec2=[[NSDate date] timeIntervalSince1970];
    stoptime=timeinsec2;
    running=false;
}

//Measure the elapsed time between start and end
-(int)calculatetime
{
    int sec;
    if(running==false)
    {
        elapsetime=stoptime-starttime;
        sec=elapsetime;
        NSLog(@"\nTime Elapsed: %d second..\n",sec);
        
       
    }
    return sec;
}
// Descending order sorting for time Elapsed of each method
-(void) descendingOrderSorting:(int [])array tValue:(int)N {
    int i, j, temp; //N=100;
    for (i = 1; i <N; i++)
    for (i = 1; i <N; i++) {
        temp = array[i];
        for (j = i - 1; j >= 0 && temp > array[j]; j--) {
            array[j + 1] = array[j];
        }
        array[j + 1] = temp;
    }
    NSLog(@"Descending order of time Elapsed for method call  are:");
    for (i = 0; i < N; i++)
    {NSLog(@"%i",array[i]);}
}

@end
