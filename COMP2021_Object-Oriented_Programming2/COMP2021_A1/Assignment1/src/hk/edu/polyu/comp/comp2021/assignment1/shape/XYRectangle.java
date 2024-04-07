package hk.edu.polyu.comp.comp2021.assignment1.shape;

public class XYRectangle {
    private Point topLeft;
    private Point bottomRight;

    public Point getTopLeft() {
        return topLeft;
    }

    public Point getBottomRight() {
        return bottomRight;
    }

    public XYRectangle(Point p1, Point p2){
        this.topLeft=p1;
        this.bottomRight=p2;
        // Todo: complete the constructor
    }

    public String toString(){
        return "<("+this.topLeft.getX()+","+this.topLeft.getY()+"),("+this.bottomRight.getX()+","+this.bottomRight.getY()+")>";
    }

    public int area(){
        int tl_x = topLeft.getX();
        int tl_y = topLeft.getY();

        int br_x = bottomRight.getX();
        int br_y = bottomRight.getY();

        int length=Math.abs(tl_x-br_x);
        int width=Math.abs(tl_y-br_y);
        int area=length*width;

        return area;
    }

    public void rotateClockwise(){
        int tl_x = topLeft.getX(),tl_y = topLeft.getY(),br_x = bottomRight.getX(),br_y = bottomRight.getY();

        int new_tl_x,new_tl_y,new_br_x,new_br_y;
        int length=br_x-tl_x,width=tl_y-br_y;
        boolean isHorizon=(length>width ? true : false );
        if (isHorizon)
        {
            new_tl_x= getTopLeft().getX()-Math.abs(width);

            new_br_x= getTopLeft().getX();
            new_br_y= getTopLeft().getY()-length;

            topLeft.set(new_tl_x,tl_y);
            bottomRight.set(new_br_x,new_br_y);

        }else{
            new_tl_x= getTopLeft().getX()-Math.abs(width);

            new_br_x= getTopLeft().getX();
            new_br_y= getTopLeft().getY()-length;

            topLeft.set(new_tl_x,tl_y);
            bottomRight.set(new_br_x,new_br_y);
        }

    }

    public void move(int deltaX, int deltaY){
        topLeft.set(topLeft.getX()+deltaX, topLeft.getY()+deltaY );
        bottomRight.set(bottomRight.getX()+deltaX, bottomRight.getY()+deltaY);
    }

    public boolean contains(Point p){
        return (p.getX()>= topLeft.getX() && p.getX()<= bottomRight.getX()
                && p.getY()>= bottomRight.getY()&& p.getY()<= topLeft.getY());

    }

    public boolean contains(XYRectangle r){
        // Todo: complete the method
        return contains(r.bottomRight)&&contains(r.topLeft);
    }

    public boolean overlapsWith(XYRectangle r){
        // Todo: complete the method
        return contains(r.topLeft) || contains(r.bottomRight) ||
                contains(new Point(r.topLeft.getX(),r.bottomRight.getY())) ||
                contains(new Point(r.bottomRight.getX(),r.topLeft.getY()));
    }
}

class Point{
    private int x;
    private int y;

    public Point(int x, int y) {
        set(x, y);
    }

    public int getX() {
        return x;
    }

    public int getY() {
        return y;
    }

    public void set(int x, int y){
        this.x = x;
        this.y = y;
    }

    public String toString(){
        return "(" + getX() + "," + getY() + ")";
    }
}

