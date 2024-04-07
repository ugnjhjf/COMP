package comp2011;

public class search {
    public static void main(String[] args)
    {
        int count2=0;
        int no=1400;
        int ans=-1;
        while(true)
        {
            if (ans!=0)
            {
                no=no/2;
                ans=no;
                count2=count2+1;

            }else if(ans==0)
            {
                break;
        }
        }
        System.out.println("Times"+count2);
        int [] a={1,3,5,6,7,8,9,11,13,15,17,19,100,110,120,130};
        System.out.println(binarySearch(a,110));
    }
    static int binarySearch(int [] a,int key){
        int low=0;
        int high=a.length-1;
        int count=0;
        while(low<=high)
        {
            count=count+1;
            int mid=(low+high)/2;
            if (a[mid]==key) {
                System.out.println("Count="+count);
                return mid;}
            else if ( key>a[mid] ){
                low=mid+1;
                }
            else if (key<a[mid]){
                high=mid-1;
            }
        }

        return -1;
    }
}

