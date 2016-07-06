# Code to Bytecode for UseStaticString.java

## Sources
```java
public class UseStaticString {

    private static final String something = "something";
    private boolean b = true;

    public void doStuff() {
        if(b) {
            doAnotherStuff(something);
        }
    }

    private void doAnotherStuff(String chain) {
        System.out.println(chain);
    }
}
```

## Bytecode
```
Compiled from "UseStaticString.java"
public class UseStaticString {
  public UseStaticString();
    Code:
       0: aload_0       
       1: invokespecial #1                  // Method java/lang/Object."<init>":()V
       4: aload_0       
       5: iconst_1      
       6: putfield      #2                  // Field b:Z
       9: return        

  public void doStuff();
    Code:
       0: aload_0       
       1: getfield      #2                  // Field b:Z
       4: ifeq          13
       7: aload_0       
       8: ldc           #3                  // String something
      10: invokespecial #4                  // Method doAnotherStuff:(Ljava/lang/String;)V
      13: return        
}
```
