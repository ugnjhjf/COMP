package comp2011.lec10;

import java.util.*;
 
/**
 * 
 * @author Yixin Cao (November 1, 2020)
 *
 * Heapsort is not "heap sort," i.e., sorting with a heap.
 *
 * Similar to insertion sort and selection sort, the input array is partitioned into two parts, sorted and to-be-processed.
 * 
 * The to-be-processed part is organized as a heap.
 *
 */
public class Heapsort {
    private static void swap(int [] a, int x, int y) {
        int temp = a[x];
        a[x] = a[y];
        a[y] = temp;
    }
    
    /*
     * The element at index c bubbles up the heap.
     * 
     * Running time O( log n ), or more precisely, O( log size ).
     */
    private static void up(int[] a, int c) {
        if (c == 0) return;
        int p = (c - 1) / 2;
        if (a[c] <= a[p]) return;
        swap(a, c, p);
        up(a, p);
    }

    /*
     * The element at index p bubbles down the heap.
     * Unlike up, we need to pass {@code size}.
     *  
     * @param p the current node under consideration
     * @param size the size of the current heap, from index 0 to index size - 1. 
     *
     * Running time O( log n ), or more precisely, O( log size ).
     */
    private static void down(int[] a, int p, int size) {
        if (p * 2 + 2 > size) return;
        int larger = p * 2 + 1;
        if (larger + 1 < size && a[larger] < a[larger+1]) 
            larger++;
        if (a[p] >= a[larger]) return;
        swap(a, p, larger);
        down(a, larger, size);
    }
    
    /*
     * The heapsort algorithm has two phases.
     * 
     * First, include elements into the virtual heap one by one.
     * Second, remove the max from the virtual heap one by one.
     *  
     * Running time O( n log n ).
     */    
    public static void heapsort(int[] a) {
        for (int i = 1; i < a.length; i++)
            up(a, i);
        for (int i = a.length - 1; i > 0; i--) {
            swap(a, 0, i);  // similar to removeMax.
            down(a, 0, i);
            // Uncomment the following line to see the progress.
            // System.out.println(Arrays.toString(a));
        } 
    }

    public static void main(String args[]){
        /*
         * testing with random data.
        int size = 10;
        int[] a = new int[size];
        SecureRandom random = new SecureRandom();
        for (int i = 0; i < size; i++)
            a[i] = random.nextInt(size);
         */

        int testData[][] = { // try different inputs.
                {},
                {1, 1, 1, 1, 1, 1, 1},
                {10, 8, -4, 89, 2, 0, 4, -19, 200},
                {5, 4, 3, 2, 1, 1, 0, 0, -1},
                {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11},
                {1, 3, 2, 6, 7, 5, 4, 12, 13, 15, 14, 10, 11, 9, 8},
                {3, 2, 6, 13, 8, 4, 10, 7, 14, 11, 12, 5, 9},
                {65, 85, 17, 88, 66, 71, 45, 38, 95, 48, 18, 68, 60, 96, 55},
                {10, 8, 14, 89, 32, 50, 77, 38} 
            };
        for (int[] a:testData) {
            System.out.println("The original array: " + Arrays.toString(a));
            heapsort(a);
            System.out.println("Sorted: " + Arrays.toString(a));
        }
    }
    
    // iterative version
    private static void iUp(int[] a, int c) {
    }    
    
    // iterative version
    private static void iDown(int[] a, int p) {
    }    
}
