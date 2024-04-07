package hk.edu.polyu.comp.comp2021.assignment1.complex;

import javax.print.attribute.standard.Copies;
import java.util.ConcurrentModificationException;

public class Complex {
    public Rational real;
    public Rational imag;

    public Complex(Rational real, Rational imag) {
        this.real=real;
        this.imag=imag;

    }

    public Complex add(Complex other) {
        this.real=this.real.add(other.real);
        this.imag=this.imag.add(other.imag);

        this.simplify();
        return this;

    }

    public Complex subtract(Complex other) {
        other.imag.a=-other.imag.a;
        other.real.a=-other.real.a;

       return this.add(other);
    }

    public Complex multiply(Complex other) {
            Rational A = this.real;
            Rational B = this.imag;

            Rational C = other.real;
            Rational D = other.imag;

            Rational AC = A.multiply(C);
            Rational BD = B.multiply(D);

            Rational BC = B.multiply(C);
            Rational AD = A.multiply(D);

            A = AC.subtract(BD);
            B = BC.add(AD);

            this.real=A;
            this.imag=B;
            this.simplify();

            return this;
    }

    public Complex divide(Complex other) {
        Rational A = this.real;
        Rational B = this.imag;

        Rational C = other.real;
        Rational D = other.imag;


        Rational AC=A.multiply(C);
        Rational BD=B.multiply(D);
        Rational ACBD=AC.add(BD);
        Rational realDen=C.multiply(C).add(D.multiply(D));
        Rational realAns=ACBD.divide(realDen);

        Rational BC=B.multiply(C);
        Rational AD=A.multiply(D);
        Rational BCAD=BC.subtract(AD);
        Rational imagAns=BCAD.divide(realDen);

        this.real=realAns;
        this.imag=imagAns;

        return this;
    }

    public void simplify() {
        Complex c1=new Complex(this.real,this.imag);
        real.simplify();
        imag.simplify();

    }

    public String toString() {
        return "("+this.real.a+"/"+this.real.b+","+this.imag.a+"/"+this.imag.b+")";
    }


}
