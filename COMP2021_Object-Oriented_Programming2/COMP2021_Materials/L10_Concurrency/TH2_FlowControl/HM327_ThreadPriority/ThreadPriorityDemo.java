package L10_Concurrency.TH2_FlowControl.HM327_ThreadPriority;

public class ThreadPriorityDemo {
    public static void main(String[] args)
    {
        ThreadPriority t1 = new ThreadPriority("Car");
        ThreadPriority t2 = new ThreadPriority("Plane");
        ThreadPriority t3 = new ThreadPriority("MTR");

        System.out.println("t1="+t1.getPriority());
        System.out.println("t2="+t2.getPriority());
        System.out.println("t3="+t3.getPriority());

        t1.setPriority(1);
        t2.setPriority(4);
        t3.setPriority(10);

        System.out.println(Thread.MAX_PRIORITY);
        System.out.println(Thread.MIN_PRIORITY);
        System.out.println("t1="+t1.getPriority());
        System.out.println("t2="+t2.getPriority());
        System.out.println("t3="+t3.getPriority());

        t1.start();
        t2.start();
        t3.start();
    }
}
