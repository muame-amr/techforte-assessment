import java.util.Collections;

public class Question1 {
    public static void main(String[] args) {
        // Time: O(n), Space: O(n)

        String str = "abcd", rev = "";

        for (int  i = str.length() - 1; i >= 0; --i)
            rev += str.charAt(i);

        System.out.println(rev);
    }
}
