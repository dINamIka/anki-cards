`#question`
### What unique methods of the Collection interface  are missed (JDK 17)?
(2 methods)
```java
        add(E e): boolean
        addAll(Collection<? extends E> c): boolean
        clear(): void
        contains(Object o): boolean
        containsAll(Collection<?> c): boolean
        isEmpty(): boolean
default parallelStream(): Stream<E>
        remove(Object o): boolean
        removeAll(Collection<?> c): boolean
default removeIf(Predicate<? super E> filter): boolean
        retainAll(Collection<?> c): boolean
        size(): int
default toArray(IntFunction<T[]> generator): T[]
        toArray(T[] a): T[]
```
`#answer`
```java
default stream(): Stream<E>
        toArray(): Object[]
```
[java 17 Docs. Collection\<E\>](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html)