`#question`
#### Is this valid?
```java
interface Vehicle {
    Vehicle(String model) {
        System.out.println(model);
    }
}
```

`#answer`
**No**. Interfaces can't have constructors. Interfaces are not part of object’s inheritance tree.