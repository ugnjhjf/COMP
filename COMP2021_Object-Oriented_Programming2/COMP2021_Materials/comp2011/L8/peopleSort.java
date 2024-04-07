package comp2011.L8;

public class peopleSort {
    static void binarySort(Student[] a) {
        int n = a.length;
        Student[] b = new Student[n];
        for (int i = 0; i < n; i++) b[i] = new Student(a[i].name, a[i].gender); // 拷贝对象并创建新的实例

        int girls = 0, boys = n - 1;
        for (int i = 0; i < b.length; i++) {
            if (b[i].gender == 'F') {
                a[girls] = b[i];
                girls++;
            } else {
                a[boys] = b[i];
                boys--;
            }
        }
    }

    public static void main(String[] args) {
        Student[] ss = new Student[5];
        Student s1 = new Student("Tim", 'M');
        Student s2 = new Student("SuperBoy", 'M');
        Student s3 = new Student("Anna", 'F');
        Student s4 = new Student("Echidna", 'F');
        ss[0] = s1;
        ss[1] = s3;
        ss[2] = s4;
        ss[3] = s2;

        binarySort(ss);
        for (Student student : ss) {
            System.out.println(student.name + " " + student.gender);
        }
    }
}

class Student {
    public String name;
    public char gender;

    public Student(String name, char gender) {
        this.name = name;
        this.gender = gender;
    }
}