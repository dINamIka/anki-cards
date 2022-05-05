`#question`
#### Fill in the blanks to read input from the keyboard in the console (6 things).
```java
try (____ i = new ____(____)) {
    int in;
    char inChar;
    do {
        in = i.____();
        inChar = (char) in;
    } while (
        (in != ____) && (inChar != ____)
    );
} catch (Exception e){}
```

`#answer`
```java
try (BufferedInputStream i = new BufferedInputStream(System.in)) {
    int in;
    char inChar;
    do {
        in = i.read();
        inChar = (char) in;
    } while (
        (in != -1) && (inChar != '\n')
    );
} catch (Exception e){}
```