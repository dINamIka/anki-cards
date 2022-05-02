`#question`
#### What would be the output?
```java
var s1 = "hello";
var s2 = new String("hello");
var s3 = new String(s2);
var s4 = new String(s3);

System.out.println(s1=="hello");
System.out.println(s1==s2);
System.out.println(s2=="hello");
System.out.println(s3==s1);
System.out.println(s3==s2);
System.out.println(s3=="hello");
System.out.println(s3==s4);
```
##
`#answer`
```java
// output
System.out.println(s1=="hello");   //true
System.out.println(s1==s2);        //false
System.out.println(s2=="hello");   //false
System.out.println(s3==s1);        //false
System.out.println(s3==s2);        //false
System.out.println(s3=="hello");   //false
System.out.println(s3==s4);        //false
```
