package comp2011;

public class CommonDivision {

    public static int GCD(int a, int b) {
        if (a % b == 0) {
            return b;
        }
        if (b>a)
        {
            int temp=a;
            a=b;
            b=temp;
        }
        if (b == 0) {
            return a; // 当 b 等于 0 时，a 即为最大公约数
        } else {
                 if (a>0)
                 {
                    return GCD(b, a % b);
                }// 递归// 调用，交换参数并计算新的 a 和 b

        }
        return -1;
    }

    public static void main(String args[])
    {

        System.out.println(GCD(96,13));

    }

}
