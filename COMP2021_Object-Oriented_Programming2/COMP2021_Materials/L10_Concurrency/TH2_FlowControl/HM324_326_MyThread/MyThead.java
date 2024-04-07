package L10_Concurrency.TH2_FlowControl.HM324_326_MyThread;

public class MyThead extends Thread{
    MyThead(String name){
        this.name=name;
    }
    String name;
    public void run()
    {
        for(int i=0;i<=5;i++)
        {
            System.out.println("run from"+name+" "+i);
        }
    }
}
