# SwiftExtensions

This repository contains a collection of Swift methods and extensions that can be helpful in the context of an iOS/MacOS project. More than that, it is a personal collection of methods that I found useful in different situations across past experiences.  

## Table of Contents
1. [Foundation](#Foundation)
    1. [Date](#Date)
    2. [Encodable](#Encodable)
2. [UIKit](#UIKit)
    1. [UITableView](#UITableView)
    2. [UITextField](#UITextField)

<a name="Foundation"></a>

## Foundation

<a name="Date"></a>

### Date Extensions

| Method  | Description |
| ------------- | ------------- |
| convertToStringWithFormat | Converts a Date to a string given a date format. |


<a name="Encodable"></a>

### Encodable Extensions

| Method  | Description |
| ------------- | ------------- |
| asDictionary | Converts any encodable data structure into a dictionary. |

<a name="UIKit"></a>

## UIKit


<a name="UITableView"></a>

### UITableView Extensions

| Method  | Description |
| ------------- | ------------- |
| reloadDataWithoutScroll | Reloads TableView while also maintaining current position. |



<a name="UITextField"></a>

### UITextField Extensions

| Method  | Description |
| ------------- | ------------- |
| getTotalNumberLines | Returns the number of lines in the TextField according to its text content. |
| getCursorLineNumberPosition | Returns the number of line where the cursor is currently at. |
| getCursorPosition | Returns the character number where the cursor is currently at. |
| getCurrentWord | Returns a string corresponding to where the cursor is at the moment. |
