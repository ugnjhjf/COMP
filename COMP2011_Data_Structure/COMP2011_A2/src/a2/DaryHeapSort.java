public class DaryHeapSort<T extends Comparable<T>> {

    private T[] heap;
    private int size;
    private int d;

    public DaryHeapSort(int capacity, int d) {
        if (capacity <= 0 || d <= 1) {
            throw new IllegalArgumentException("Invalid capacity or d value");
        }
        heap = (T[]) new Comparable[capacity];
        size = 0;
        this.d = d;
    }

    public void insert(T x) {
        if (size == heap.length) {
            throw new IllegalStateException("Heap is full");
        }
        heap[size] = x;
        up(size);
        size++;
    }

    public T removeRoot() {
        if (size == 0) {
            throw new IllegalStateException("Heap is empty");
        }
        T root = heap[0];
        heap[0] = heap[size - 1];
        size--;
        down(0);
        return root;
    }

    private void up(int childIndex) {
        int parentIndex = (childIndex - 1) / d;
        T child = heap[childIndex];

        while (childIndex > 0 && child.compareTo(heap[parentIndex]) > 0) {
            heap[childIndex] = heap[parentIndex];
            childIndex = parentIndex;
            parentIndex = (childIndex - 1) / d;
        }

        heap[childIndex] = child;
    }

    private void down(int parentIndex) {
        int childIndex = getMaxChildIndex(parentIndex);

        T parent = heap[parentIndex];

        while (childIndex != -1 && heap[childIndex].compareTo(parent) > 0) {
            heap[parentIndex] = heap[childIndex];
            parentIndex = childIndex;
            childIndex = getMaxChildIndex(parentIndex);
        }

        heap[parentIndex] = parent;
    }

    private int getMaxChildIndex(int parentIndex) {
        int maxChildIndex = -1;
        int startChildIndex = parentIndex * d + 1;

        for (int i = 0; i < d && i + startChildIndex < size; i++) {
            if (maxChildIndex == -1 || heap[i + startChildIndex].compareTo(heap[maxChildIndex]) > 0) {
                maxChildIndex = i + startChildIndex;
            }
        }

        return maxChildIndex;
    }

    public void printHeap() {
        System.out.println("Heap:");
        int level = 0;
        int levelSize = 1;
        for (int i = 0; i < size; i++) {
            if (i == levelSize) {
                System.out.println();
                level++;
                levelSize += Math.pow(d, level);
            }
            System.out.print(heap[i] + " ");
        }
        System.out.println("\n");
    }

    public static void heapSort(int[] arr, int d) {
        DaryHeapSort<Integer> heap = new DaryHeapSort<>(arr.length, d);

        for (int num : arr) {
            heap.insert(num);
            heap.printHeap();
        }

        for (int i = arr.length - 1; i >= 0; i--) {
            arr[i] = heap.removeRoot();
            heap.printHeap();
        }
    }

    public static void main(String[] args) {
        int[] arr = {9, 6, 4, 2, 1, 8, 5, 7, 3};
        int d = 5;

        System.out.println("Original array:");
        for (int num : arr) {
            System.out.print(num + " ");
        }
        System.out.println("\n");

        heapSort(arr, d);

        System.out.println("Sorted array:");
        for (int num : arr) {
            System.out.print(num + " ");
        }
    }
}