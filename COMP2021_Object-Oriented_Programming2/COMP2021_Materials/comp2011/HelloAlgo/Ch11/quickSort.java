package comp2011.HelloAlgo.Ch11;

public class quickSort {
    static void swap(int []nums,int i,int j)
    {
        int temp=nums[i];
        nums[i]=nums[j];
        nums[j]=temp;
    }

    static int partition(int [] nums,int left,int right)
    {
        int i=left, j=right;
        while( i < j)
        {
            while( i < j && nums[i] >= nums[left])
            {
                i++;
            }
            while( i < j && nums[j] <= nums[left])
            {
                j--;
            }
            swap(nums,i,j);
        }
        swap(nums,i,left);
        return i;
    }

    static void quickSort(int[] nums, int left, int right) {
        // 子数组长度为 1 时终止递归
        if (left >= right)
            return;
        // 哨兵划分
        int pivot = partition(nums, left, right);
        // 递归左子数组、右子数组
        quickSort(nums, left, pivot - 1);
        quickSort(nums, pivot + 1, right);
    }

    public static void main(String[] args){
        int a[]={1,5,21,3,12418,74};
        quickSort(a,0,a.length-1);
        for (int i=0;i<a.length;i++) System.out.println(a[i]);
    }
}
