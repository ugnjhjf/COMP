package hk.edu.polyu.comp.comp2021.assignment1.base7;

public class Base7 {
    
    public static String convertToBase7(int num) {
        boolean flag=false;
        if(num<0)
        {
            flag=true;
            num=Math.abs(num);
        }
        String ans="";

        while(true){
            if(num<7) {ans=ans+num; break;}
            ans+=String.valueOf(num%7);
            num=num/7;
        }

        String temp="";
        for(int i=ans.length()-1;i>=0;i--)
        {
            temp=temp+ans.charAt(i);
        }

        if (flag) temp="-"+temp;

        return temp;
    }
}
