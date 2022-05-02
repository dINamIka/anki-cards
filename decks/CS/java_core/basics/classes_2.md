`#question`
####  What is the output?
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

`#answer`
```
method of Child
method of Parent
```
`static` methods are not overridden and resolved using type of reference variable.
