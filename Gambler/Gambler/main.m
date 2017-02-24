/*
    main.m
    Gambler

    Created by SHAHEBAZ,At BridgeLabz Solutions LLP on 22/02/17.
    Copyright © 2017 BridgeLabz Solutions LLP. All rights reserved.

                
                    ----Problem Statement----
      7. Gambler
 
             a. Desc -> Simulates a gambler who start with $stake and place fair $1 bets until he/she goes broke (i.e. has no money) or reach $goal. Keeps track of the number of times he/she wins and the number of bets he/she makes. Run the experiment N times, averages the results, and prints them out.
             b. I/P -> $Stake, $Goal and Number of times
             c. Logic -> Play till the gambler is broke or has won
             d. O/P -> Print Number of Wins and Percentage of Win and Loss.
 */
#import <Foundation/Foundation.h>
#import "Gambler.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int stake,goal,trials,bets = 0,wins = 0,loss=0;
        Gambler *random=[[Gambler alloc] init];
        NSLog(@"Enter the value of Stake=");
        scanf("%i",&stake);
        NSLog(@"Enter the value of Goal=");
        scanf("%i",&goal);
        NSLog(@"Enter the value of trails=");
        scanf("%i",&trials);
        
        for (int t = 0; t < trials; t++) {
            
            int cash = stake;
            while (cash > 0 && cash < goal) {
                bets++;
                if ([random randomNumerGenrater] < 0.5) cash++; //Random method                 called for random number
                else                     cash--;
            }
            if (cash == goal) wins++;
            else
                loss++;
        }
        int value1=( 100.0 * wins / trials);
        int value2=(100.0 * loss / trials);
        int value3=(1.0 * bets / trials);
        NSLog(@"%i wins of %i",wins,trials);
        NSLog(@"%i loss of %i",loss,trials);
        NSLog(@"Percent of games won = %i",value1);
        NSLog(@"Percentage of game loss =%i ",value2);
        NSLog(@"Avg  bets               = %i" ,value3);
    }
    return 0;
}




