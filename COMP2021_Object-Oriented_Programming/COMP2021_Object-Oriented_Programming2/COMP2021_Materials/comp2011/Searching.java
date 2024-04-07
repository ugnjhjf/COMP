package comp2011;

public class Searching {
    public static int LinearSearch(int[] a, int target){
        for(int i=0;i<a.length-1;i++){
        if (a[i]==target) return i;
        }
        return -1;
    }
    public static int LinearSearchRecur(int []a,int target,int size){
        if(size==0) {return -1;}
        else {
            if (a[size]==target) return size;
        else {return LinearSearchRecur(a, target, size - 1);}
        }
    }

    public static int binarySearch(int []a,int target) {
        int l = 0, h = a.length - 1;
        while (l <= h) {
            int mid = l+(h-l) / 2;
            if (target == a[mid]) return mid;
            if (target > a[mid]) {
                l = mid + 1;}
            else{
                h = mid - 1;
            }
        }
        return -1;
    }

    public static int binarySearchRecur(int []a,int target,int low,int high) {
        if (low > high) return -1;
        int mid = (low + high) + low / 2;
        if (a[mid] == target) {
            return mid;
        }//判断应该放在return中,不应该放在单独的if else
        return (target < a[mid])? binarySearchRecur(a, target, low, mid - 1) :binarySearchRecur(a, target, mid + 1, high);

    }
    public static int recursiveGCD(int a,int b){
        if (a*b ==0) return a+b;
        int c=Math.min(a,b);
        if((a+b)%c==0)return c;
        return recursiveGCD((a+b)%c,c);
    }
    public static int recursiveGCD2(int a,int b){
        int c=Math.min(a,b),d=Math.max(a,b);
        if (d%c ==0) return c;
        return recursiveGCD(c,d%c); //My GCD correct (56/28=2...0) 用28再去除余数
    }
    public static void main(String[] args)
    {
        int a[]={1,3,5,9,155,159,159,515,1399,1494,14959};
        System.out.println("Location="+LinearSearch(a,515));
        System.out.println("Location="+LinearSearchRecur(a,515,a.length-1));
        System.out.println("Location="+binarySearch(a,515));
        System.out.println("Location="+binarySearchRecur(a,515,0,a.length-1));
        System.out.println(recursiveGCD(56,28));
        System.out.println(recursiveGCD2(56,28));
    }
}
