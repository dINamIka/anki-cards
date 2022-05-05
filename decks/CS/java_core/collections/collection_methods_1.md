`#question`
### What unique methods of the Collection interface  are missed (JDK 8)?
(4 methods)
```java
        add(E e): boolean
        addAll(Collection<? extends E> c): boolean
        clear(): void
        contains(Object o): boolean
        containsAll(Collection<?> c): boolean
default parallelStream(): Stream<E>
        remove(Object o): boolean
        removeAll(Collection<?> c): boolean
        retainAll(Collection<?> c): boolean
        size(): int
        toArray(): Object[]
```
`#answer`
```java
        isEmpty(): boolean
default removeIf(Predicate<? super E> filter): boolean
default stream(): Stream<E>
        toArray(T[] a): T[]
```
[java 17 Docs. Collection\<E\>](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html)