`#question`
#### What is the output?
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

`#answer`
**Compilation Error**.
Only one public class allowed per `.java` file.
