//Warning: Don't change this line.  If you change the package name, your code will not compile, and you will get zero points.
package a2;

import java.util.Comparator;

/**
 *
 *
 * My student ID is 22084045d, I'm implementing a 5-aray Max heap.


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
public class DaryHeap_ShumTszWai_22084045d<T extends Comparable<T>> { // Please change!
    private T[] heap;
    private int size=0;
    private int nAry=5;

    public DaryHeap_ShumTszWai_22084045d(int capacity) {
        if( capacity <=0 ) throw new IllegalStateException();
        heap = (T[]) new Comparator[capacity];

    }
    public void insert(T x) {
        if(heap.length == size) return;
        if(size==0) {
            heap[0]=x;
        }
        heap[size]=x;
        for(T x:)
        size++;
    }

    // Running time: O(   ).
    public T removeRoot() {return null;}

    // Running time: O(   ).
    private void up(int c) {
        if( c == 0 ) return;
        if

    }

    // Running time: O(   ).
    private void down(int ind) {

    }

    /**
     * Merge the given <code>heap</code> with <code>this</code>.
     * The result will be stored in <code>this</code>.
     *
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
     *
     * Running time: O(   ).
     */
    public void merge(DaryHeap_ShumTszWai_22084045d<T> heap) {
    }
    public static void swap(int [] arr, int a, int b) {
        int temp = arr[a];
        arr[a] = arr[b];
        arr[b] = temp;
    }
    /*
     * Make sure you test your code thoroughly.
     * The more test cases, the better.
     */
    public static void main(String[] args) {
    }
}
     
