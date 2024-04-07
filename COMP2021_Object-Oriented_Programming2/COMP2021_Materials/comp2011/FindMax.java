package comp2011;

public class FindMax {
    public static void main(String[] args) {
        int []a1 = {12, 35, 1, 10, 1, 19, 49, 34};

        int []b1={1,5,9,13};
        int []b2={2,4,5,5,15};
        int []a;
        System.out.println(FindMax(a1, 0, 7));
        System.out.println(FindMin(a1, 0, 7));
//        Merging2(a1,0,7);
    }

    public static int FindMax(int a[], int low, int high) {
        if (low >= high) return a[low];
        int mid = low + (high - low) / 2;
        int m1 = FindMax(a, low, mid);
        int m2 = FindMax(a, mid + 1, high);
        return (m1 > m2) ? m1 : m2;
    }

    public static int FindMin(int a[], int low, int high) {
        if (low >= high) return a[low];
        int mid = low + (high - low) / 2;
        int m1 = FindMin(a, low, mid);
        int m2 = FindMin(a, mid + 1, high);
        return (m1 <= m2) ? m1 : m2;
    }

    public static int[] FindMaxAndMin(int a[], int low, int high) {
        return new int[]{1};
    }

    public static void Merging(int[] a1, int[] a2, int[] a) {
        int i1 = 0, i2 = 0, i = 0;
        while (i1 < a1.length && i2 < a2.length) {
            a[i++] = (a1[i1] <= a2[i2]) ? a1[i1++] : a2[i2++];
        }
        while (i1 < a1.length) a[i++] = a1[i1++];
        while (i2 < a2.length) a[i++] = a2[i2++];
        System.out.println(a);
    }
//    public static void Merging2(int[] a,int low,int high)
//    {
//        if(high <=low) return;
//        int mid=low +(high-low)/2;
//        Merging2(a,low,mid);
//        Merging2(a,mid+1,high);
//        Merging(low,mid,high);
//    }
}