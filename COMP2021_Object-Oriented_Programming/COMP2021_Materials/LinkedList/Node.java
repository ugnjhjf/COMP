package LinkedList;

public class Node {
    private Node next;
    private String data;
    private Node previous;

//    public void setNext(comp2011.LinkedList.Node next) {
//        this.next = next;
//    }
//
//    public comp2011.LinkedList.Node getPrevious() {
//        return previous;
//    }
//
//    public void setPrevious(comp2011.LinkedList.Node previous) {
//        this.previous = previous;
//    }

    public Node(Node next, String data) {
        this.next = next;
        this.data = data;
    }

    public Node getNext() {
        return next;
    }

    public void setNext(Node next) {
        this.next = next;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }
}



