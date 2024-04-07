package comp2011;

import java.util.Arrays;

public class Merge {

    static void merge(int[]a1,int[] a2,int[]a)
    {
        int i1=0,i2=0,i=0;

        while(i1<a1.length && i2<a2.length)
        {
            if(a1[i1]<=a2[i2]){
                a[i]=a1[i1];
                i1++;
                i++;
            }
            else{
                a[i]=a2[i2];
                i2++;
                i++;
            }
        }
        while (i1<a1.length) a[i++]=a1[i1++]; //如果
        while (i2<a2.length) a[i++]=a2[i2++];
    }
static void merge3 ( int [] a1 , int [] a2 , int [] a) {
    int i1=0,i2=0,i=0;
    while (i1<a1.length && i2< a2.length){
        if (a1[i1]<=a2[i2])
        {
            a[i]=a1[i1];
            i1++;
            i++;
        }
        else{
            a[i]=a2[i2];
            i2++;
            i++;
        }
    }
    while (i1<a1.length) a[i++]=a1[i1++];
    while (i2<a2.length) a[i++]=a2[i2++];
}
    static void mergeAnswer ( int [] a1 , int [] a2 , int [] a) {
        int i1 = 0, i2 = 0, i = 0;
        while (i1 < a1.length && i2 < a2.length)
            a[i++] = (a1[i1] <= a2[i2]) ? a1[i1++] : a2[i2++];//把小的全部先抓出来
        while (i1 < a1.length) a[i++] = a1[i1++]; //剩下的再放进去
        while (i2 < a2.length) a[i++] = a2[i2++];
    }

    static void mergeCompressedVer(int []a1,int a2[],int []a)
    {
        int i1=0,i2=0,i=0;
        while(i1<a1.length &&i2 < a2.length){
            a[i++]=(a1[i1]<=a2[i2]? a1[i1++]:a2[i2++]);
        }
        while(i1<a1.length) a[i++]=a1[i1++];
        while(i2<a2.length) a[i++]=a2[i2++];
        //i++ 先返回后加
        //++i先加后返回
    }

    static int max(int a[],int low,int high)
    {
        if (low>=high) return a[low];
        int mid=low +(high-low)/2;
        int m1=max(a,low,mid);
        int m2=max(a,mid+1,high);
        return (m1>m2 ? m1:m2);
    }
    private static int[] maxmin(int[] a, int low, int high) {
        if (low > high) return null;  // wrong input
        int ans[] = new int[2];
        if (high == low) {  // base case one
            ans[0] = ans[1] = high;
            return ans;
        }
        // Now an range of two is a base case.
        if (high == low + 1) { // base case two
            ans[0] = (a[low] > a[high])? low:high;
            ans[1] = (a[low] < a[high])? low:high;
            return ans;
        }

        // in the rest high - low >= 2. Easy.
        int mid = low + (high - low) / 2;
        int[] a1 = maxmin(a, low, mid);
        int[] a2 = maxmin(a, mid + 1, high);
        ans[0] = (a[a1[0]] > a[a2[0]])?a1[0]:a2[0]; // larger with the larger
        ans[1] = (a[a1[1]] < a[a2[1]])?a1[1]:a2[1]; // smaller with the smaller
        return ans;
    }


    public static void mergesort(int[] a1,int[]a2){


    }

    class pair{
        public int first;
        public int second;
    }

    public static void main(String[] args)
    {
        int[] a1={1,5,8,61};
        int[] a2={11,51,52,71};
        //1,5,8,11,51,52,61,71
        int[] a={-1,-1,-1,-1,-1,-1,-1,-1};
//        merge3(a1,a2,a);
        int[] ans = maxmin(a2, 0, a.length - 1);
        System.out.println("max = " + a[ans[0]] + ", min = " + a[ans[1]]);

//        mergeCompressedVer(a1,a2,a);
//        System.out.println(max(a1,0,3));
//
//        System.out.println(Arrays.toString(a));
    }
}
