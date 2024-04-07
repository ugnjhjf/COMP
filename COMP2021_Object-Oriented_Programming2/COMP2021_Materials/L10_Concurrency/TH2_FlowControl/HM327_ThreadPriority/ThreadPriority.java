package L10_Concurrency.TH2_FlowControl.HM327_ThreadPriority;

public class ThreadPriority extends Thread{
    ThreadPriority(String name){
        this.name=name;
    }
    String name;
    public void run()
    {
        for(int i=0;i<=3;i++)
        {
            System.out.println(name+" "+i);
        }
    }
}
