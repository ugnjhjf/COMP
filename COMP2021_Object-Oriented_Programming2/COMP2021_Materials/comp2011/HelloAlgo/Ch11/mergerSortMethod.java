package comp2011.HelloAlgo.Ch11;

public class mergerSortMethod {
    public static void merge(int nums[],int left,int mid,int right)
    {
        int [] temp=new int[right-left+1]; //临时储存合并的结果
        int i=left,j=mid+1,k=0;

        while(i<=mid && j<=right) //左右都有东西的时候，把小的先放进去数组（之情写过的两个已排列的数组merge方法）
        {
            if(nums[i]<=nums[j])
            {
                temp[k]=nums[i];
                i++;
                k++;
            }
            else {
                temp[k]=nums[j];
                j++;
                k++;
            }
        }

        while(i<=mid){
            temp[k]=nums[i];
            k++;
        }
        while(j<=right)
        {
            temp[k]=nums[j];
            j++;
        }
        for(int m=0;m<temp.length;m++)
            nums[left+m]=temp[m];
    }
    public static void mergeSort(int nums[],int left,int right){
        if(left>=right) return;

        //拆分阶段
        int mid=(left+right)/2;
        mergeSort(nums,left,mid);
        mergeSort(nums,mid+1,right);

        merge(nums,left,mid,right);
        return;
    }
    public static void main(String[] args)
    {
        int arr[]={1,499,1313,2313,1,3,57,8,6,2345};
        mergeSort(arr,0,arr.length-1);
        for(int i=0;i<arr.length;i++)
        {
            System.out.println(arr[i]+",");
        }
    }
}
