//Warning: Don't change this line.  If you change the package name, your code will not compile, and you will get zero points.
package comp2011.a1;

import java.util.ArrayList;
import java.util.Arrays;

/*
 * @author Yixin Cao (September 11, 2023)
 *
 * Simulating a doubly linked list with an array.
 *
 */
public class DListOnArray_22084045D_ShumTszWai { // Please change!
    private int[] arr;
    private static final int SIZE = 126; // it needs to be a multiplier of 3.

    /**
     * VERY IMPORTANT.
     *
     * I've discussed this question with the following students:
     *     1.
     *     2.
     *     3.
     *     ...
     *
     * I've sought help from the following Internet resources and books:
     *     1.
     *     2.
     *     3.
     *     ...
     */
    public DListOnArray_22084045D_ShumTszWai() {
        this.arr=new int[SIZE];
        arr[0]=0;
        arr[1]=0;
    }

    /**
     * VERY IMPORTANT.
     *
     * I've discussed this question with the following students:
     *     1.
     *     2.
     *     3.
     *     ...
     *
     * I've sought help from the following Internet resources and books:
     *     1.
     *     2.
     *     3.
     *     ...
     */
    public boolean isEmpty() {
        return (arr[0]==0 && arr[1]==0);
    }

    /**
     * VERY IMPORTANT.
     *
     * I've discussed this question with the following students:
     *     1.
     *     2.
     *     3.
     *     ...
     *
     * I've sought help from the following Internet resources and books:
     *     1.
     *     2.
     *     3.
     *     ...
     */
    public boolean isFull() {
        return false;
    }

    public void err() {
        System.out.println("Oops...");
    }

    /**
     * VERY IMPORTANT.
     *
     * I've discussed this question with the following students:
     *     1.
     *     2.
     *     3.
     *     ...
     *
     * I've sought help from the following Internet resources and books:
     *     1.
     *     2.
     *     3.
     *     ...
     */
    public void insertFirst(int x) {
        if(isEmpty())
        {
            arr[0]=2;
            arr[3]=x;
        }

    }

    /**
     * VERY IMPORTANT.
     *
     * I've discussed this question with the following students:
     *     1.
     *     2.
     *     3.
     *     ...
     *
     * I've sought help from the following Internet resources and books:
     *     1.
     *     2.
     *     3.
     *     ...
     */
    public void insertLast(int x) {
        System.out.println(arr[0]);
    }

    /**
     * VERY IMPORTANT.
     *
     * I've discussed this question with the following students:
     *     1.
     *     2.
     *     3.
     *     ...
     *
     * I've sought help from the following Internet resources and books:
     *     1.
     *     2.
     *     3.
     *     ...
     */
    public int deleteFirst() {
        return -1;
    }

    /**
     * VERY IMPORTANT.
     *
     * I've discussed this question with the following students:
     *     1.
     *     2.
     *     3.
     *     ...
     *
     * I've sought help from the following Internet resources and books:
     *     1.
     *     2.
     *     3.
     *     ...
     */
    public int deleteLast() {
        return -1;
    }

    /*
     * Optional, this runs in O(n) time.
    public void reverse() {

    }
     */

    /*
     * Optional, but you cannot test without it.
    // this method should print out the numbers in the list in order
    // for example, after the demonstration, it should be "75, 85, 38, 49"
    public String toString() {
        return "";
    }
    */

    /*
     * The following is prepared for your reference.
     * You may freely revise it to test your code.
     */
    public static void main(String[] args) {
        DListOnArray_22084045D_ShumTszWai list = new DListOnArray_22084045D_ShumTszWai();
        // You may use the following line to print out data (the array),
        // so you can monitor what happens with your operations.
//        System.out.println(Arrays.toString(list.data));
        System.out.println(list);
        list.insertFirst(75);
        System.out.println(list);
//        list.insertFirst(99);
//        list.insertLast(85);
//        list.insertLast(38);
//        System.out.println(list);
//        list.deleteFirst();
//        System.out.println(list);
//        list.insertLast(49);
//        System.out.println(list);
    }
}
