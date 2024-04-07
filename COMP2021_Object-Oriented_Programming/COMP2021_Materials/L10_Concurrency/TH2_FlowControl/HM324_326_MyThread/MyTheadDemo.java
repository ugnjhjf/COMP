package L10_Concurrency.TH2_FlowControl.HM324_326_MyThread;

public class MyTheadDemo {
    public static void main(String[] args)
    {
        MyThead my1 = new MyThead("Thread 1");
        MyThead my2 = new MyThead("Thread 2");
//  这两行代码会执行完my1再执行my2，因为被override之后他们只是普通的对象执行普通的方法，并不是thread中的run。
//        应该使用my1.start();来执行my1.run()里的内容。
//        my1.run();
//        my2.run();
    }
}
