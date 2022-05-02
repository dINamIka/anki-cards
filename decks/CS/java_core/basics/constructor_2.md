`#question`
#### What's wrong with this code?
```java
public class User extends AbstractUser {
    private String name;
    public User(String name) {
        this.name = name;
        super();
    }
}
```

`#answer`
The call to `super()` or `this()` has to be the very first statement in the constructor.
