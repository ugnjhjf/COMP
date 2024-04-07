package comp2011.HelloAlgo.Ch6;

import java.util.HashMap;
import java.util.Map;


public class HashSetDemo {
    public static void main(String[] args){
        Map<Integer,String> map = new HashMap<>();

        map.put(1,"Echidna");
        map.put(2,"Noire");

        String name = map.get(1); //将key(Intger)输入进去得到值(String);
        System.out.println(name);
        map.remove(2);

        //遍历部分

        /* 遍历哈希表 */
// 遍历键值对 key->value
        for (Map.Entry <Integer, String> kv: map.entrySet()) {
            System.out.println(kv.getKey() + " -> " + kv.getValue());
        }
// 单独遍历键 key
        for (int key: map.keySet()) {
            System.out.println(key);
        }
// 单独遍历值 value
        for (String val: map.values()) {
            System.out.println(val);
        }


    }
}
