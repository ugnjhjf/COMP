package comp2011.HelloAlgo.Ch5;

import java.util.Stack;

public class stackDemo {
public static void main(String[] args)
{
    Stack<Integer> stack = new Stack<>();

    /* 元素入栈 */
    stack.push(1);
    stack.push(3);
    stack.push(2);
    stack.push(5);
    stack.push(4);

    /* 访问栈顶元素 */
    int peek = stack.peek();
    System.out.println(stack.toString());
    stack.pop();
    System.out.println(stack.pop());
    System.out.println(stack.peek());

    /* 元素出栈 */
    int pop = stack.pop();

    /* 获取栈的长度 */
    int size = stack.size();

    /* 判断是否为空 */
    boolean isEmpty = stack.isEmpty();
}
}
