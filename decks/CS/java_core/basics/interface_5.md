`#question`
#### What is the outcome?
```java
interface House {
    default String getAddress() {
        return "101 Main Str";
    }
}
interface Bungalow {
    default String getAddress() {
        return "101 Smart Str";
    }
}
class MyHouse implements Bungalow, House { }
public class TestRun {
    public static void main(String[] args) {
        House house = new MyHouse();             // 1
        System.out.println(house.getAddress());  // 2
    }
}
```
**A**. Code for interface `House` will cause compilation to fail.  
**B**. Code for interface `Bungalow` will cause compilation to fail.  
**C**. Code for class `MyHouse` will cause compilation to fail.  
**D**. Line at `// 1` will cause compilation to fail.  
**E**. Line at `// 2` will cause compilation to fail.  
**F**. The code will compile successfully.  
###
`#answer`
**C** Method `getAddress()` must be implemented as both interfaces have the same default methods.
