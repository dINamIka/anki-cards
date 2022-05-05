`#question`
### Which of these array declarations and initializations are valid?
```java
byte byteArr[] = new byte[0];                         
short[] litArr = {1, 2, 3};                           
int []intArray = new int[0];                           
long[] litArr2 = new long[]{1, 2, 3};                 
char charArr[] = {'a', 'b'};                           
boolean[] boolArr = new boolean[2] {true, false};     
Object arr = new int[1];                               
Object[] objArr = new String[]{"1", "2", "3"};        
Object[] arrayOfObjects = {new Object(), 3L, "3"};
Object obj = new Object[] {null, "str", new Date()};
```
`#answer`
```java
byte byteArr[] = new byte[0];                          //valid
short[] litArr = {1, 2, 3};                            //valid
int []intArray = new int[0];                           //valid
long[] litArr2 = new long[]{1, 2, 3};                  //valid
char charArr[] = {'a', 'b'};                           //valid
boolean[] boolArr = new boolean[2] {true, false};      //INVALID!!
Object arr = new int[1];                               //valid
Object[] objArr = new String[]{"1", "2", "3"};         //valid
Object[] arrayOfObjects = {new Object(), 3L, "3"};     //valid
Object obj = new Object[] {null, "str",new Date()};    //valid
```