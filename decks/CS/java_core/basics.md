#### :Q Open a file stream
#### :A
```java
final File file = new File("filename.txt");
try (final FileInputStream stream = new FileInputStream(file)) {
    //code goes here
} catch (Exception e) {
    //exception handling
}
```
###
#### :Q Will this work ?
```java
class Test {
    public static void main(String[] args) {
        enum Seasons { RAINS, SUMMER, WINTER };
    }
}
```
#### :A
WRONG! enum cannot be inside a method.
###
