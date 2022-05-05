`#question`
```java
interface House {
    public default String getAddress() {
        return "101 Main Str";
    }
}
interface Bungalow {
    public default String getAddress() {
        return "101 Smart Str";
    }
}
class MyHouse implements Bungalow, House {
}
public class TestRun {
    public static void main(String[] args) {
        House ci = new MyHouse();            // 1
        System.out.println(ci.getAddress()); // 2
    }
}
```
#### Select 1 option
**A**. Code for interface House will cause compilation to fail.  
**B**. Code for interface Bungalow will cause compilation to fail.  
**C**. Code for class MyHouse will cause compilation to fail.  
**D**. Line at `// 1` will cause compilation to fail.  
**E**. Line at `// 2` will cause compilation to fail.  
**F**. The code will compile successfully.  

`#answer`
**C**  
`test.MyHouse inherits unrelated defaults for getAddress() from types test.House and test.Bungalow`