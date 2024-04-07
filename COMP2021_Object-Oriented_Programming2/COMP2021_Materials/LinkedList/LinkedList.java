package LinkedList;

public class LinkedList {
    static Node head;

    public static void main(String[] args)
    {
        head=new Node(null,"first");
        for (int i=1;i<=6;i++) {
            String data=String.valueOf(i);
            addAtEnd(data);
        }

        printList();
        for (int i=0;i<=3;i++) deleteAtEnd();
        printList();
    }

    public static void addAtEnd(String input){
        Node n1=new Node(null,input);
        Node current=head;
        Node previous;

        while(current.getNext()!=null)
        {
            previous=current;
            current=current.getNext();
//            current.setPrevious(previous);
        }
        current.setNext(n1);

    }
    public static void deleteAtEnd(){
        Node current=head;
        Node previous=head;
        while(current.getNext()!=null)
        {
            previous=current;
            current=current.getNext();
        }
        current=previous;
        current.setNext(null);
    }
    public static void printList()
    {
        Node current=head;
        while(current.getNext()!=null){
            System.out.print("Node Address="+current+" ");
            System.out.println("data="+current.getData());
            current=current.getNext();
        }
        //Print the final node
        System.out.print("Node Address="+current+" ");
        System.out.println("data="+current.getData());
        System.out.println();
    }
}
