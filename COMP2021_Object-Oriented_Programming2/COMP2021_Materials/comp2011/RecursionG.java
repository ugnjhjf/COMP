package comp2011;

public class RecursionG {
    static long sum(int n){
        if (n==1) return 1;
        return (n-1)+n;
    }

    static long factorial(int n){
        if (n==0) return 1;
        return factorial(n-1)*n;
    }
    static int binarySearch(int[] a,int key){
        int l=0 , h=a.length-1;
        while(l<=h){
            int m=1+(h-l)/1;
            if (key==a[m]) return m;
            if (key<a[m]) h=m-1;
            else l=m+1;

        }
        return -1;
    }

    static int bS(int[] a,int l,int h,int key){
        while(l<=h){
            int m=1+(h-l)/1;
            if (key==a[m]) return m;
            if (key<a[m]) h=m-1;
            else l=m+1;

        }
        return -1;
    }
    public static void main(String[] args)
    {
        System.out.println(sum(5));
        System.out.println(factorial(5));
    }
    int recursiveGCD(int a,int b)
    {
        if (a*b==0) return a+b;
        int c=Math.min(a,b);
        if ((a+b)%c==0) return c;
        return (recursiveGCD((a+b)%c,c));
    }
    static void move ( int n, int from , int to) {
        String [] rods = {" Left ", " Center ", " Right "};
        if(n <= 1) {
            System .out . println (" disk ␣1:␣" + rods [ from ] + "␣ ->␣" + rods [to ]);
            return ;
             }
        int via = 3 - from - to; // a small trick
         move (n - 1, from , via );
         System .out . println (" disk ␣" + n + ":␣" + rods [ from ] + "␣ ->␣" + rods [to ]);
         move (n - 1, via , to );
         }
}
