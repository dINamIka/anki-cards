`#question`
#### What is the output?
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

`#answer`
No.
`Reference to 'VALUE' is ambiguous, both 'T1.VALUE' and 'T2.VALUE' match`.
But this will
```java
System.out.println(((T1) a).VALUE);
```
