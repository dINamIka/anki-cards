`#question`
#### If a spring bean has only one constructor, do we need to annotate it with `@Autowired`?
##
`#answer`
Since Spring 4.3 if a class only has a single constructor, it will always be used, even if not annotated.  
