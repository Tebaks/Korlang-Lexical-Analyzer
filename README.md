# Korlang
A programming language

Group Members: 
Ege Yıldır,
Ahmetcan Özcan,
Kenan Abbak

Korlang is a memory first dynamic language. It is easy to implement but with extra effort it allows you better memory management. It is easy to learn and easy to read. It has dynamic typing, types are associated with values not variables.

## Syntax
### Variables
```go
var a = 1;
var b = "korlang";
var c = true;
const d = 1;
```
### Loops
```go
for a range ["1",2,true]{
    print(a);
}

for{
    print("infinite loop")
}
for code == true{
    print("korlang is the best")
}
 ```
### Functions
```go
func messanger (message,from){
    print("you got message: " + message +"\nfrom: "+from );
}

func sum(x,y){
    return x+y;
}

messanger("hi","korlang");
/*
you got message: hi
from: korlang
*/
sum(1+2);
//3
```

## kor{} Statement

It has "kor{}" statement lets you conserve variables in curly brackets.

```go
kor{
var x = 5;
var y = 10;

var z = x+y;
extract z;
}

print(z); // result 15

print(x); // Variable not found.
print(y); // Variable not found.
 ```

 "kor" statement can be used for deleting external scope objects

 ```go
 var externalVar = "Hello";
 kor externalVar //can be used inline syntax

 var anotherExternalVar = "Hi, again";
 kor {
     anotherExternalVar;
     var internalVar = "Hi, from kor";
     extract internalVar;
 }

 print(externalVar); // Variable Not Found!!
 print(anotherExternalVar); // Variable Not Found!!
 print(internalVar); // Result: Hi, from kor


 ```

