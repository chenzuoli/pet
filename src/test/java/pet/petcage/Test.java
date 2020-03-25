package pet.petcage;

import java.util.Random;

/**
 * Created by user chenzuoli on 2020/3/23 19:49
 * description:
 */
public class Test {
    public static void main(String[] args) {
        String code = String.valueOf(100000 + new Random().nextInt(89999));
        System.out.println(code);
    }
}
