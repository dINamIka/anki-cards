`#question`
#### What is the output?
```java
class Address {
    public String getAddress(String street, String city) {
        try {
            return street.toString() + " : " + city.toString();
        } finally {
            System.out.println("Posted:");
        }
    }
    public static void main(String[] form) {
        String street = null;
        String city = null;
        System.out.print(new Address().getAddress(street, city));
    }
}
```

`#answer`
```
Posted:
Exception in thread "main" java.lang.NullPointerException
	at calendar.Address.getAddress(Test.java:59)
	at calendar.Address.main(Test.java:67)
```