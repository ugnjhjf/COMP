import comp2011.RecursionG;

enum Day {
    MONDAY,
    TUESDAY,
    WEDNESDAY,
    THURSDAY,
    FRIDAY,
    SATURDAY,
    SUNDAY
}

public class enumTest {
    public static void main(String[] args) {
        Day today = Day.WEDNESDAY;
        System.out.println("Today is " + today); // 输出：Today is MONDAY

        switch (today) {
            case MONDAY:
                System.out.println("It's Monday!");
                break;
            case TUESDAY:
                System.out.println("It's Tuesday!");
                break;
            // ...其他枚举常量的分支
        }
        RecursionG.move(5,1,2);
        int a=5/3;
        System.out.println(a); //1向下取6
    }
}