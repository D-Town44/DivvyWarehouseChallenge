# DivvyWarehouseChallenge
***
## Daniel Willeitner's solution to the Divvy Mid Level Engineer assignment

My solution to the problem relies an observation about the problem:

the left most points have a distinct pattern to their numbering:

1, 2, 4, 7, 11, 16 ... 

The numbers increase with a pattern of:

 +1, +2, +3, +4, +5 ...
 
i.e. 1 + 1 = 2, 2 + 2 = 4, 4 + 3 = 7, 7 + 4 = 11, ...
 
Because of this pattern the left most item in a diagonal can be found with the following equation:

Let n be the height of item, and a_n be the id of the item i.e. a_1 = 1, a_2 = 2, a_3 = 4, a_4 = 7 ...

a_n = ((n - 1)/ 2)*n + 1          if n is odd <br> 
      ((n - 1)/ 2)*n + 1 + n/2    if n is even
      
      
My solution to the problem includes 3 steps.

1. Every point belongs to a diagonal. For each point I find the coordinates of the left most item in a original item's diagonal
2. Use the equation above to calculate the item id of the left most item.
3. Using the left most item's item id, walk back to the original item it find it's id

Example:
    Problem: Find the ID of the item at (2, 3)
    
| 11<br>
| 7 12<br>
| 4 8 13<br>
| 2 5 9 14<br>
| 1 3 6 10 15<br>
    
   1. The item at (2, 3) is in a diagonal with points: (4, 0), (3, 1), (2, 3), (1, 4). The left most of these being (1, 4).
   2. For (1, 4), we use the equation above with n = 4 to get ((4 -1)/2) * 4 + 1 + (4/2)= 7. The ID of the item at (1, 4) is 7.
   3. Because (1, 4) has ID 7 and (2, 3) is the next item in the diagonal, the item at (2, 3) must have ID 6.
    
### Code Organization

There are 4 main files:

**DivvyMain.exs:** Short script that takes in 2 or more integer user inputs. The inputs are 
used as coordinates, and the program displays the item ids for each coordinate pair.

**DivvyChallenge.ex:** Script containing all of the functions and logic for calculating
the item id from a coordinate pair. The main function is: `get_warehouse_id_by_coords()`.
    
**InputUtils.ex:** Script containing all of the helper functions for reading input from the user.

**DivvyTests.exs:** Script containing all of the unit tests for the other scripts.    
    
### Extra Credit:
In the prompt, the test case that is wrong is (100,000, 100,000)
The answer in the prompt is 20000000001, but the actual id is 19999800001
