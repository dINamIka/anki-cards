`#question`
### What unique methods of the Collection interface  are missed (JDK 17)?
(2 methods)
```java
        add(E e): boolean
        addAll(Collection<? extends E> c): boolean
        contains(Object o): boolean
        containsAll(Collection<?> c): boolean
        isEmpty(): boolean
default parallelStream(): Stream<E>
        remove(Object o): boolean
        removeAll(Collection<?> c): boolean
default removeIf(Predicate<? super E> filter): boolean
        retainAll(Collection<?> c): boolean
default stream(): Stream<E>
        toArray(): Object[]
default toArray(IntFunction<T[]> generator): T[]
        toArray(T[] a): T[]
```
`#answer`
```java
        clear(): void
        size(): int
```
[java 17 Docs. Collection\<E\>](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html)