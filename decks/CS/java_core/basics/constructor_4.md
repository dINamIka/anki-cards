`#question`
#### Is this valid?
```java
class Model {
    public Model() { }
    public Model Model() {}
}
```

`#answer`
**No**, missing `return` statement for `Model()` method.
It's allowed (but not recommended) to have a method with the same name as the class.