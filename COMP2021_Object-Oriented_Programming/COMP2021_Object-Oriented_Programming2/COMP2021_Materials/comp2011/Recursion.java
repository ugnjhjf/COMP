package comp2011;

import java.util.Scanner;

/*
 * @author Yixin Cao (September 16, 2022)
 *
 * A warm-up for recursion, which we will frequently use in this subject.
 *
 */
public class Recursion {

    /*
     * Sum up the first n integers recursively.
     */
    public static long sum(int n) {
        // we assume n >= 0;
        if (n <= 1) return n;
        return sum(n - 1) + n;
    }

    /*
     * Calculate n! using the definition.
     *
     * Works only for tiny numbers because n! quickly goes out of the range of long.
     */
    public static long factorial(int n) {
        if (n <= 1) return 1;
        return factorial(n - 1) * n;
    }

    /*
     * Calculate Fibonacci numbers using the definition.
     *
     * Very bad idea because it is very slow.
     * The running time is O(   ).
     */
    public static long rFibonacci(int n) {
        if (n <= 1) return n;
        return rFibonacci(n - 2) + rFibonacci(n - 1);
    }

    /*
     * Calculate the greatest common divisor of two numbers without recursion.
     */
    public static int iterativeGCD(int a, int b) {
        return -1;
    }

    /*
     * Calculate the greatest common divisor of two numbers recursively.
     */
    public static int recursiveGCD(int a, int b) {
        return -1;
    }

    /*
     * Binary comp2011.search.
     *
     * Try to change this method to return the first occurrence of the key in a?
     * How about the last occurrence? The mid?
     */


    /*
     * Recursive binary comp2011.search.
     *
     * Try to change this method to return the first occurrence of the key in a?
     * How about the last occurrence? The mid?
     */
    public static int recursiveBS(int[] a, int key,int l,int h) {
        if(l>h) return -1;
        int low=l;
        int high=h;
        int mid = (high + low) / 2;
        if (a[mid]==key) return key;
        else if(a[mid]>key) return recursiveBS( a, key,low, mid-1);
            else return recursiveBS( a, key, mid+1,high);
    }


    public static void main(String[] args) {

        int[] a = {1, 3, 5, 7, 9, 11, 13, 21};

        System.out.println(recursiveBS(a,5,0,a.length));

//        for (int i = 10; i < 40; i++) {
//            System.out.println(i);
//            System.out.println(factorial(i));
//            System.out.println(rFibonacci(i));
//        }
//        Scanner     keyboard = new Scanner(System.in);
//        int         num1, num2;
//        System.out.print("Enter the first integer:");
//        num1 = keyboard.nextInt();
//        System.out.print("Enter the second integer:");
//        num2 = keyboard.nextInt();
//
//        System.out.println("the gcd is " + recursiveGCD(num1, num2));
//        System.out.println("the gcd is " + iterativeGCD(num1, num2));
//        keyboard.close();

    }
}

