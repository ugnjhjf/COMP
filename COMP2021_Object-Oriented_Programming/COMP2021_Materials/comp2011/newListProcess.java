package comp2011;

public class newListProcess {
    static int [] a={1,4,5,6,7,8,11,15};
    public static void main(String[] args)
    {
        removeElement(a,4);
        for (int i=a.length-1;i<a.length;i++)
        {
            System.out.print(a[i]+" ");
        }
    }
    static int findLocation(int[] a,int key) {
        int low = 0;
        int high = a.length - 1;
        int count = 0;
        while (low <= high) {
            count = count + 1;
            int mid = (low + high) / 2;
            if (a[mid] == key) {
                return mid;
            } else if (key > a[mid]) {
                low = mid + 1;
            } else if (key < a[mid]) {
                high = mid - 1;
            }
        }
        return -1;
    }
    static void removeElement(int []a,int target)
    {
        int index=findLocation(a,target);
        while (true){
            for(int i=a.length-1;i>index;i--)
            {
                a[i-1]=a[i];
            }
        }
    }
}
