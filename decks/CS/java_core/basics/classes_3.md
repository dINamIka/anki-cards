`#question`
#### Will this compile?
```java
public class User {
    public User() { }
    public User User() { return new User(); }
}
```

`#answer`
It will compile.
It's allowed to have method with the same name as a class name, but it's confusing and should be avoided.
