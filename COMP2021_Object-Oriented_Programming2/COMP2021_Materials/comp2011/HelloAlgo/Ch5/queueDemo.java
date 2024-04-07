package comp2011.HelloAlgo.Ch5;

import java.util.LinkedList;
import java.util.Queue;

public class queueDemo {
    public static void main(String[] args)
    {
        Queue<Integer> queue = new LinkedList<>() ;
        queue.offer(1);
        queue.offer(2);
        queue.offer(3);
        queue.offer(4);
        System.out.println(queue.poll());//出列
        System.out.println(queue.toString());

    }
}
