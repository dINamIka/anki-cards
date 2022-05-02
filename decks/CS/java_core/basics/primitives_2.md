`#question`
#### Will this compile?
```java
short s = 10;
char c = s;
s=c;
```

`#answer`
No. Explicit cast is required for both scenarios.
`short` - 16-bit signed integer (-32,768 to 32,767 inclusive).
`char` - 16-bit "unsigned" integer (0 to 65,535 inclusive).
