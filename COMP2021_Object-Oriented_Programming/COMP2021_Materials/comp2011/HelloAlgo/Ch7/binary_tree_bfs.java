package comp2011.HelloAlgo.Ch7;


import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

public class binary_tree_bfs {
    /* 二叉树节点类 */


    public static void main(String[] args)
    {
        // 初始化节点
        TreeNode n1 = new TreeNode(1);
        TreeNode n2 = new TreeNode(2);
        TreeNode n3 = new TreeNode(3);
        TreeNode n4 = new TreeNode(4);
        TreeNode n5 = new TreeNode(5);
// 构建引用指向（即指针）
        n1.left = n2;
        n1.right = n3;
        n2.left = n4;
        n2.right = n5;




    }
}
