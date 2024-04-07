package comp2011.HelloAlgo.Ch7;


import com.sun.source.tree.BreakTree;
import com.sun.source.tree.Tree;

/* 二叉树节点类 */
public class TreeNode {
    int val;         // 节点值
    TreeNode left;   // 左子节点引用
    TreeNode right;  // 右子节点引用
    TreeNode(int x) { val = x; }

    public static boolean  findValue(TreeNode root, int val) {
        TreeNode cur = root;
        while (cur != null) {
            if (cur.val == val) {
                System.out.println("Find");
                return true;
            }
            if (cur.val <= val) cur = cur.right;
            else {
                cur = cur.left;
            }
        }

        return false;
    }



    public static void main(String[] args){
// 初始化节点
        TreeNode n1 = new TreeNode(100);
        TreeNode n2 = new TreeNode(40);
        TreeNode n3 = new TreeNode(1300);
        TreeNode n4 = new TreeNode(20);
        TreeNode n5 = new TreeNode(50);
// 构建引用指向（即指针）
        n1.left = n2;
        n1.right = n3;
        n2.left = n4;
        n2.right = n5;



       System.out.println(findValue(n1,50));
       System.out.println(findValue(n1,20));
    }
}
