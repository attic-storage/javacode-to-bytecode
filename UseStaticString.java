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
