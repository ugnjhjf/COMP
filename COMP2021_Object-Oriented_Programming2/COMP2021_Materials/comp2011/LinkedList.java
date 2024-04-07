package comp2011;

public class LinkedList<T> {
    static class Node<T> {
        T element;
        Node<T> next;

        public Node(T element) {
            this.element = element;
        }
    }

    Node<T> head;

    public LinkedList() {
        head = null;
    }

//    public void insertFirst(T a) {
//        Node<T> newNode = new Node<T>(a);
//        newNode.next = head;
//        head = newNode;
//    }

    public void insertFirst(T a)
    {
        Node<T> cur= new Node<T>(a);
        cur.next=head;
        head=cur;
    }

    public void insertLast(T a)
    {
        if(head==null) {insertFirst(a);return;}
        Node<T> cur=head,prev=null;
        while(cur.next!=null)
        {
            cur=cur.next;
        }
        Node<T> newNode=new Node<T>(a);
        newNode.next=null;
        cur.next=newNode;
    }

//    public void insertLast(T a) {
//        if (head == null) {
//            insertFirst(a);
//            return;
//        }
//        Node<T> cur = head;
//        while (cur.next != null)
//            cur = cur.next;
//        Node<T> newNode = new Node<T>(a);
//        newNode.next = null;
//        cur.next = newNode;
//    }
    static long factorial(int n) {
        if (n <= 0) return 1;
        return factorial(n-1)*n;
    }

    static long fibonacci(int n)
    {
        if(n<=1) return n;
        return fibonacci(n-2)+fibonacci(n-1);
    }
    public static void main(String[] args) {
        LinkedList<Integer> list = new LinkedList<>();

        // 测试插入元素到链表的头部
        list.insertFirst(3);
        list.insertFirst(2);
        list.insertFirst(1);

        // 测试插入元素到链表的尾部
        list.insertLast(4);
        list.insertLast(5);
        list.insertLast(6);

        // 打印链表中的元素
        Node<Integer> currentNode = list.head;
        while (currentNode != null) {
            System.out.print(currentNode.element + " ");
            currentNode = currentNode.next;
        }

        System.out.println(factorial(5));
        System.out.println(fibonacci(5));
    }
}