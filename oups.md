#### Some Common Shell Commands

1. **`wc` (Word Count)**

   Function: Counts the number of lines, words, and characters in a file.

   - Options:
     - `-l`: Count lines
     - `-w`: Count words

2. **`grep` (Global Regular Expression Print, g/re/p)**
   Function: Searches for a specified pattern in a file.

   - Options:
     - `-i`: Case-insensitive search
     - `-v`: Invert match, showing lines that don't match
     - `-r`: Recursive search through directories

3. **`sort`**
   Function: Sorts lines in a file.

   - Options:
     - `-n`: Sort numerically
     - `-r`: Reverse the sorting order

4. **`uniq` (Unique)**
   Function: Removes or displays repeated lines in a sorted file.

   - Options:
     - `-c`: Prefix each line with the count of occurrences
     - `-d`: Only show duplicate lines
     - `-u`: Only show unique lines

5. **`awk`**
   Function: Processes and extracts fields from a file. In this example(`awk '{print $1}'`), `awk` prints the first field (column) of each line.

   - We can also use it for more complex data manipulation by specifying patterns and actions.

6. **`cut`**
   Function: Extracts specific fields from each line in a file.

   - Options:
     - `-d <delimiter>`: Specify a field delimiter (default is tab)
     - `-f <fields>`: Select specific fields to display, e.g. `-f1,3` for the first and third tab-delimited fields, `-f1-3` extract from first up to third field(ends included)