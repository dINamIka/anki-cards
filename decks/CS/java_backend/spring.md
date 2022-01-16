#### :Q-1 If a spring bean has only one constructor, do we need to annotate it with `@Autowired`?
#### :A-1
Since Spring 4.3 if a class only has a single constructor, it will always be used, even if not annotated.  

---
#### :Q-2 Should a constructor of a bean annotated with `@Autowired` be `public`?
#### :A-2
Constructor doesn't have to be `public`. (All access modifiers are allowed).
