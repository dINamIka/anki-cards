#### :Q What would be the output?
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
#### :A
```java
System.out.println(s1=="hello");   //true
System.out.println(s1==s2);        //false
System.out.println(s2=="hello");   //false
System.out.println(s3==s1);        //false
System.out.println(s3==s2);        //false
System.out.println(s3=="hello");   //false
System.out.println(s3==s4);        //false
```
##

---
#### :Q Is this correct interface method declaration?
```java
interface Access {
    final void grant();
}
```
#### :A
Abstract method cannot be `final`.
##

---
#### :Q Is this correct interface method declaration?
```java
interface Access {
    private void grant();
}
```
#### :A  
Abstract method cannot be `private`.
##

---
#### :Q Is this correct interface method declaration?
```java
interface Access {
    protected void grant();
}
```
#### :A
Abstract method cannot be `protected`.
##

---
#### :Q Is this correct `abstract` method declaration?
```java
abstract class Access {
    abstract static void grant();
}
```
#### :A
The `abstract` modifier can never be combined with the `static` modifier.
Static method belongs to class and must be implemented.
##

---
```
#### :Q Will this compile?
```java
int number = 9____9_______________9_9;
```
#### :A
Yes. Underscores are allowed between any two digits in a numeric literal, but not allowed at the beginning or end of the literal.
##

---
#### :Q Which primitive type from `int, short, double` could be used to make it output `0`?
```java
public static void main(String[] args) {
    ____ value;
    System.out.println(value);
}
```
#### :A
**Compilation Error** as `value` variable is not initialized.  
With initialization the correct types would be `int` and `short`.
##

---
#### :Q What is the output?
```java
public class Parent {
    static void m() {
        System.out.println("method of Parent");
    }
}

public class Child extends Parent {
    static void m() {
        System.out.println("method of Child");
    }

    public static void main(String[] args) {
        Child child = new Child();
        child.m();
        Parent par = child;
        par.m();
        par = new Parent();
        par.m();
        Parent.m();
        Child.m();
    }
}
```
#### :A
**Compilation Error**.
Only one public class allowed per `.java` file.
##

---
#### :Q What is the output?
```java
public class Parent {
    static void m() {
        System.out.println("method of Parent");
    }
}

class Child extends Parent {
    static void m() {
        System.out.println("method of Child");
    }

    public static void main(String[] args) {
        Child child = new Child();
        child.m();
        Parent par = child;
        par.m();
    }
}
```
#### :A
```
method of Child
method of Parent
```
`static` methods are not overridden and resolved using type of reference variable.
##

---
#### :Q What is the output?
```java
class TestClass implements T1, T2 {
    public void m1() {
    }
    public static void main(String[] args) {
        var a = new TestClass();
        System.out.println(a.VALUE);
    }

}
interface T1 {
    int VALUE = 1;
    void m1();
}
interface T2 {
    int VALUE = 2;
    void m1();
}
```
#### :A
No.
`Reference to 'VALUE' is ambiguous, both 'T1.VALUE' and 'T2.VALUE' match`.
But this will
```java
System.out.println(((T1) a).VALUE);
```
##

---
#### :Q Will this compile?
```java
short s = 10;
char c = s;
s=c;
```
#### :A
No. Explicit cast is required for both scenarios.
`short` - 16-bit signed integer (-32,768 to 32,767 inclusive).
`char` - 16-bit "unsigned" integer (0 to 65,535 inclusive).
##

---
#### :Q What access modifiers could have java constructor?
#### :A
Constructor can use any access modifier (`public`, `protected`, `package-private`, `private`).
##

---
#### :Q Will this compile?
```java
public class User {
    public User() { }
    public User User() { return new User(); }
}
```
#### :A
It will compile.
It's allowed to have method with the same name as a class name, but it's confusing and should be avoided.
##

---
#### :Q What's wrong with this code?
```java
public class User extends AbstractUser {
    private String name;
    public User(String name) {
        this.name = name;
        super();
    }
}
```
#### :A
The call to `super()` or `this()` has to be the very first statement in the constructor.
##

---
