`#question`
### Is this valid?
```java
Stream<Integer> stream = Stream.of(1, 3, 5);
for (Integer el : stream) {
    System.out.println(el);
}
```
`#answer`
No, it's not valid as `Stream` doesn't implement `Iterable` interface.  
Although, it has `iterator()` method.