package hk.edu.polyu.comp.comp2021.assignment1.complex;

public class Rational {
    // Todo: add the missing fields
    public int a;
    public int b;

    public Rational(int numerator, int denominator) {
        // Todo: complete the constructor
        this.a=numerator;
        this.b=denominator;
    }

        public Rational add(Rational other) {
            this.a=other.b*this.a + other.a*this.b;
            this.b=this.b* other.b;
            this.simplify();
            return this;
    }

    public Rational subtract(Rational other) {
        // Todo: complete the method
        other.a=-other.a;
        return this.add(other);
    }

    public Rational multiply(Rational other) {
        int ansA=a*other.a;
        int ansB=b*other.b;
        Rational ans=new Rational(ansA,ansB);
        ans.simplify();
        return ans;
    }

    public Rational divide(Rational other) {
        // Todo: complete the method
        this.a=this.a*other.b;
        this.b=this.b*other.a;
        return this;
    }

    public String toString() {
        return a+"/"+b;
    }

    public void simplify() {
        boolean flag=(a*b<0 ? true : false );

        a=Math.abs(a);
        b=Math.abs(b);

        int commonFactor=GCD(a,b);
        this.a=(flag?-1:1)*a/commonFactor;
        this.b=b/commonFactor;

    }
        // Todo: complete the method

    public static int GCD(int a, int b) {
        if (b == 0) {return a;}
        if (a % b == 0) return b;
        if (b>a)
        {
            int temp=a;a=b;b=temp;
        }
        if (a>0)
        {
            return GCD(b, a % b);
        }
        return -1;
    }
}
