# SwiftExtensions

This repository contains a collection of Swift methods and extension that can be helpful in the context of an iOS project. More than that, it is a personal collection of methods that I found useful in different situations and past experiences.  


<br>
<br>
<br>

## Foundation

### Date Extensions

| Method  | Description |
| ------------- | ------------- |
| convertToStringWithFormat | Converts a Date to a string given a passed date format. |


### Encodable Extension

| Method  | Description |
| ------------- | ------------- |
| asDictionary | Converts any encodable data structure into a dictionary. |





<br>
<br>
<br>

## UIKit

### UITableView Extensions

| Method  | Description |
| ------------- | ------------- |
| reloadDataWithoutScroll | Reloads TableView while also maintaining current position. |



### UITextField Extensions

| Method  | Description |
| ------------- | ------------- |
| getTotalNumberLines | Returns the number of lines in the TextField according to its text content. |
| getCursorLineNumberPosition | Returns the number of line where the cursor is currently at. |
| getCursorPosition | Returns the character number where the cursor is currently at. |
| getCurrentWord | Returns a string corresponding to where the cursor is at the moment. |