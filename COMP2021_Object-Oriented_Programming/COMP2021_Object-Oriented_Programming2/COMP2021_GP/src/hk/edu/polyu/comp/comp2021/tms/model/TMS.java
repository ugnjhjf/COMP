package hk.edu.polyu.comp.comp2021.tms.model;

import java.util.ArrayList;
import java.io.*;
import java.util.HashMap;

//import static sun.jvm.hotspot.runtime.BasicObjectLock.size;

/**
 * Create the system instance.
 * @param <T>
 */
public class TMS<T> {
    private static ArrayList<PrimitiveTask> sTasks = new ArrayList<>();

    private static ArrayList<CompositeTask> cTasks = new ArrayList<>();

    private static ArrayList<PrimitiveTask> crPResult = new ArrayList<>();

    private static ArrayList<CompositeTask> crCResult = new ArrayList<>();

    /**
     * Check if a task with the given taskName exists in the task list.
     *
     * @param taskName The name of the task to check.
     * @return True if the task exists, false otherwise.
     */
    public static boolean IsTaskNameExist(String taskName) {
        boolean judge = false;
        for (int i = 0; i < getsTasks().size(); i++) {
            if (getsTasks().get(i).getTaskName().equals(taskName)) {
                judge = true;
                return judge;
            }
        }

        for (int i = 0; i < getcTasks().size(); i++) {
            if (getcTasks().get(i).getTaskName().equals(taskName)) {
                judge = true;
                return judge;
            }
        }
        return judge;
    }

    /**
     * List of primitive tasks.
     * @return pritimitiveTasks
     */
    public static ArrayList<PrimitiveTask> getsTasks() {
        return sTasks;
    }

    /**
     * @param sTasks sTasks
     */
    public static void setsTasks(ArrayList<PrimitiveTask> sTasks) {
        TMS.sTasks = sTasks;
    }

    /**
     * List of composite tasks.
     * @return cTasks
     */
    public static ArrayList<CompositeTask> getcTasks() {
        return cTasks;
    }

    /**
     *
     * @param cTasks cTasks
     */
    public static void setcTasks(ArrayList<CompositeTask> cTasks) {
        TMS.cTasks = cTasks;
    }

    /**
     * List of primitive tasks for criterion results.
     * @return crPResult
     */
    public static ArrayList<PrimitiveTask> getCrPResult() {
        return crPResult;
    }

    /**
     * @param crPResult crPResult;
     */
    public static void setCrPResult(ArrayList<PrimitiveTask> crPResult) {
        TMS.crPResult = crPResult;
    }

    /**
     * List of composite tasks for criterion results.
     * @return crCResult
     */
    public static ArrayList<CompositeTask> getCrCResult() {
        return crCResult;
    }

    /**
     * @param crCResult setcrPResult;
     */
    public static void setCrCResult(ArrayList<CompositeTask> crCResult) {
        TMS.crCResult = crCResult;
    }

    /**
     * Get the index of a task with the given taskName in the task list.
     *
     * @param taskName The name of the task to find the index of.
     * @return The index of the task if found, -1 otherwise.
     */
    public int TaskNameIndex(String taskName) {
        boolean judge = false;
        for (int i = 0; i < getsTasks().size(); i++) {
            if (getsTasks().get(i).getTaskName().equals(taskName)) {
                judge = true;
                return i;
            }
        }

        // If the task is not found in the primitive tasks list,
        // check in the composite tasks list
        for (int i = 0; i < getcTasks().size(); i++) {
            if (getcTasks().get(i).getTaskName().equals(taskName)) {
                judge = true;
                return i;
            }
        }
        return -1; // Task not found
    }
    /**
     * Get the primitive task with the given taskName.
     *
     * @param taskName The name of the primitive task to get.
     * @return The primitive task if found, null otherwise.
     */
    public static PrimitiveTask getPrimitiveTask(String taskName) {

        for (int i = 0; i < getsTasks().size(); i++) {
            if (getsTasks().get(i).getTaskName().equals(taskName)) {
                return getsTasks().get(i);
            }
        }
        // System.out.println("Primitive task " + taskName + " does not exist.");
        return null;
    }
    /**
     * Get the composite task with the given taskName.
     *
     * @param taskName The name of the composite task to get.
     * @return The composite task if found, null otherwise.
     */
    public static CompositeTask getCompositeTask(String taskName) {

        for (int i = 0; i < getcTasks().size(); i++) {
            if (getcTasks().get(i).getTaskName().equals(taskName)) {
                return getcTasks().get(i);
            }
        }
        // System.out.println("Composite task " + taskName + " does not exist");
        return null;
    }

    /**
     * Create a new primitive task with the given properties.
     *
     * @param taskName      The name of the primitive task.
     * @param taskDesc      The description of the primitive task.
     * @param duration      The duration of the primitive task.
     * @param prerequesties The prerequisites of the primitive task.
     * @return The created primitive task if the task name doesn't already exist, null otherwise.
     */
    public PrimitiveTask CreatePrimitiveTask(String taskName, String taskDesc, double duration, String prerequesties) {

        if (!IsTaskNameExist(taskName)) {
            PrimitiveTask outPrimitiveTask = new PrimitiveTask(taskName, taskDesc, duration, prerequesties);
            getsTasks().add(outPrimitiveTask);
            return outPrimitiveTask;
        }
        System.out.println(taskName + " is already exist!");
        return null;
    }

    /**
     * @param taskName 1
     * @param taskDesc 1
     * @param duration 1
     * @return task
     */
    public PrimitiveTask CreatePrimitiveTask(String taskName, String taskDesc, double duration) {

        if (!IsTaskNameExist(taskName)) {
            PrimitiveTask outPrimitiveTask = new PrimitiveTask(taskName, taskDesc, duration);
            getsTasks().add(outPrimitiveTask);
            return outPrimitiveTask;
        }
        System.out.println(taskName + " is already exist!");
        return null;
    }

    /**
     * Create a new composite task with the given properties.
     *
     * @param taskName The name of the composite task.
     * @param taskDesc The description of the composite task.
     * @param subTasks The subtasks of the composite task.
     * @return The created composite task if the task name doesn't already exist, null otherwise.
     */
    public CompositeTask CreateCompositeTask(String taskName, String taskDesc, String subTasks) {
        if (!IsTaskNameExist(taskName)) {
            CompositeTask outCompositeTask = new CompositeTask(taskName, taskDesc, subTasks);
            getcTasks().add(outCompositeTask);
            return outCompositeTask;
        }
        System.out.println(taskName + " already exists!");
        return null;
    }

//        public void DeletePrimitiveTask (String taskName){
//            PrimitiveTask t1 = sTasks.get(sTasks.indexOf(taskName));
//        }
    /**
     * Print the details of a primitive task.
     *
     * @param taskName The name of the primitive task to print.
     */
    public static void PrintPrimitiveTask(String taskName) {
        PrimitiveTask t1 = getPrimitiveTask(taskName);
        if (IsTaskNameExist(taskName)&&t1!=null) {
            System.out.println("");

            System.out.println("Name:" + t1.getTaskName());
            System.out.println("Description:" + t1.getTaskDesc());
            System.out.println("Duration:" + t1.getDuration());
            System.out.println("Prerequisites:" + t1.getPrimitiveTaskPrerequest());
        } else {
            System.out.println("Primitive Task: " + taskName + " does not exist.");
        }
    }
    /**
     * Print the details of a composite task.
     *
     * @param taskName The name of the composite task to print.
     */
    public static void PrintCompositeTask(String taskName) {
        CompositeTask t2 = getCompositeTask(taskName);
        if (IsTaskNameExist(taskName)&&t2!=null) {
            System.out.println("");
            System.out.println("Name:" + t2.getTaskName());
            System.out.println("Description:" + t2.getTaskDesc());
            System.out.println("Duration:" + t2.getDuration());
            System.out.println("Subtasks:" + t2.getSubTask());
        } else {
            System.out.println("Task: " + taskName + " does not exist.");
        }
    }
    /**
     * Print the details of all tasks (primitive and composite).
     * @return 0
     */
    public int PrintAllTasks() {

        for (int i = 0; i < getsTasks().size(); i++) {
            PrintPrimitiveTask(getsTasks().get(i).getTaskName());
        }
        System.out.println();
        for (int i = 0; i < getcTasks().size(); i++) {
            PrintCompositeTask(getcTasks().get(i).getTaskName());
        }
        return 0;
    }
    /**
     * Change the specified property of a task.
     *
     * @param taskName The name of the task to modify.
     * @param property The property to change.
     * @param value    The new value for the property.
     */
    public void changeTask(String taskName, String property, T value) {

        //先查找到这个taskName，定位到它的任务类型
        if (IsTaskNameExist(taskName)) {
            Object Ptarget = getPrimitiveTask(taskName);
            if (isPrimitive((T) Ptarget)) {                         //是否为Primitive Task
                PrimitiveTask simptask = (PrimitiveTask) Ptarget; //如果是，转换为Primitive Task
                if (property.equals("taskName")) {
                    System.out.println("The name of " + simptask.getTaskName() + " has been changed to " + (String) value);
                    simptask.setTaskName((String) value);
                    return;
                } else if (property.equals("taskDesc")) {
                    simptask.setTaskDesc((String) value);
                    System.out.println("The description of " + simptask.getTaskName() + " has been changed to " + (String) value);
                    return;
                } else if (property.equals("duration")) {
                    simptask.setDuration((Double) value);
                    System.out.println("The duration of " + simptask.getTaskName() + " has been changed to " + (Double) value);
                    return;
                } else {
                    System.out.println("Invalid property input! changeTask() function terminated!");
                    return;
                }
            } else {
                CompositeTask Ctarget = getCompositeTask(taskName);
                //不是Primitive Task
                if (Ctarget != null) {
                    if (property.equals("taskName")) {
                        System.out.println("The NAME of " + Ctarget.getTaskName() + " has been changed to " + (String) value);
                        Ctarget.setTaskName((String) value);
                        return;
                    } else if (property.equals("taskDesc")) {
                        Ctarget.setTaskDesc((String) value);
                        System.out.println("The DESCRIPTION of " + Ctarget.getTaskName() + " has been changed to " + (String) value);
                        return;
                    } else {
                        System.out.println("Invalid property input! changeTask() function terminated!");
                    }
                }
            }
        }
    }
    /**
     * Report the duration of a task.
     *
     * @param taskName The name of the task.
     */
    public double ReportDuration(String taskName) {
        if (IsTaskNameExist(taskName)) {
            for (int i = 0; i < getsTasks().size(); i++) {
                if (getsTasks().get(i).getTaskName().equals(taskName)) {
                    return getsTasks().get(i).getDuration();
                }
            } // SimpleTask
            for (int i = 0; i < getcTasks().size(); i++) {
                if (getcTasks().get(i).getTaskName().equals(taskName)) {
                    return getsTasks().get(i).getDuration();
                } // Composite Task
            }
        } else {
            System.out.print("Task does not exist");
        }
        return -1.0;
    }

    /**
     * Report the earliest finish time of a task.
     *
     * @param taskName The name of the task.
     * @return 0
     */
    public double ReportEarliestFinshTime(String taskName)
    {
        if(IsTaskNameExist(taskName)){
            ArrayList<Double> totalDuration = new ArrayList<Double>();
            ArrayList<String> tasks = new ArrayList<>();
            int taskLocation=TaskNameIndex(taskName);
            double totalTime=0;
            if(getsTasks().get(taskLocation).getTaskName()==taskName){ //Task in SimpleTask
                tasks= getsTasks().get(taskLocation).getPrerequisites();
                for(int k=0;k< tasks.size();k++)
                {
                    String curTask= tasks.get(k);
                    while(getsTasks().get(TaskNameIndex(curTask)).getPrimitiveTaskPrerequest()!=",")
                    {
                        totalTime+= getsTasks().get(TaskNameIndex(curTask)).getDuration();
                        curTask= getsTasks().get(TaskNameIndex(curTask)).getPrimitiveTaskPrerequest().substring(0,0);
                    }
                }
            }
            return totalTime;
        }else {
            System.out.println("Task not exist");

        }
        return -1.0;
    }

    /**
     * Check if a task is an instance of the PrimitiveTask class or its subclass.
     *
     * @param value The task to check.
     * @return True if the task is an instance of the PrimitiveTask class or its subclass, false otherwise.
     */

    public boolean isPrimitive(T value) {
        return (value instanceof PrimitiveTask); // 任务是否属于Primitive Class
    }


    /**
     * Search for a task by its name.
     *
     * @param name The name of the task to search for.
     */
    public static void SearchName(String name) {
        for (PrimitiveTask Task : getsTasks()) {
            if (name.equals(Task.getTaskName())) getCrPResult().add(Task);
        }
        for (CompositeTask Task : getcTasks()) //如果在复合任务 返回 复合任务对象
        {
            if (name.equals(Task.getTaskName())) getCrCResult().add(Task);
        }
    }

    /**
     * Negated search by name.
     *
     * @param name The name of the task to search for
     */
    public static void SearchNameNegated(String name) {
        for (PrimitiveTask Task : getsTasks()) {
            if (!name.equals(Task.getTaskName())) getCrPResult().add(Task);
        }
        for (CompositeTask Task : getcTasks())
        {
            if (!name.equals(Task.getTaskName())) getCrCResult().add(Task);
        }
    }

    /**
     * Search for tasks based on their description.
     *
     * @param des The description to search for.
     */
    public static void SearchDescription(String des) {
        for (PrimitiveTask Task : getsTasks()) {
            if (des.equals(Task.getTaskDesc())) getCrPResult().add(Task);
        }
        for (CompositeTask Task : getcTasks())
        {
            if (des.equals(Task.getTaskDesc())) getCrCResult().add(Task);
        }
    }
    /**
     * Search for tasks based on their duration using the specified operator.
     *
     * @param op  The operator to compare the duration.
     * @param num The duration value to compare against.
     */
    public static void SearchDuration(String op, int num){
        switch (op) {
            case ">":{
                for (PrimitiveTask Task : getsTasks()) {
                    if (Task.getDuration() > num) getCrPResult().add(Task); ;
                }
                for (CompositeTask Task : getcTasks()) //如果在复合任务 返回 复合任务对象
                {
                    if (Task.getDuration() > num) getCrCResult().add(Task);
                }
            }
            case "<":{
                for (PrimitiveTask Task : getsTasks()) {
                    if (Task.getDuration() < num) getCrPResult().add(Task); ;
                }
                for (CompositeTask Task : getcTasks()) //如果在复合任务 返回 复合任务对象
                {
                    if (Task.getDuration() < num) getCrCResult().add(Task);
                }
            }
            case ">=":{
                for (PrimitiveTask Task : getsTasks()) {
                    if (Task.getDuration() >= num) getCrPResult().add(Task); ;
                }
                for (CompositeTask Task : getcTasks()) //如果在复合任务 返回 复合任务对象
                {
                    if (Task.getDuration() >= num) getCrCResult().add(Task);
                }
            }
            case "<=": {
                for (PrimitiveTask Task : getsTasks()) {
                    if (Task.getDuration() <= num) getCrPResult().add(Task); ;
                }
                for (CompositeTask Task : getcTasks()) //如果在复合任务 返回 复合任务对象
                {
                    if (Task.getDuration() <= num) getCrCResult().add(Task);
                }
            }
            case "==": {
                for (PrimitiveTask Task : getsTasks()) {
                    if (Task.getDuration() == num) getCrPResult().add(Task); ;
                }
                for (CompositeTask Task : getcTasks()) //如果在复合任务 返回 复合任务对象
                {
                    if (Task.getDuration() == num) getCrCResult().add(Task);
                }
            }
            case "!=": {
                for (PrimitiveTask Task : getsTasks()) {
                    if (Task.getDuration() != num) getCrPResult().add(Task); ;
                }
                for (CompositeTask Task : getcTasks()) //如果在复合任务 返回 复合任务对象
                {
                    if (Task.getDuration() != num) getCrCResult().add(Task);
                }
            }
        }
    }
    /**
     * Search for tasks based on the given criterion name.
     *
     * @param name The criterion name to use.
     *             Requirement 13
     */
    public static void Search(String name){                             //Requirement 13
        HashMap<String, Integer> map = new HashMap<>();
        for (Criterion thisCri: Criterion.getCriterionArrayList()){
            if (thisCri.getCriterionName().equals(name)){
                switch (thisCri.getProperty()){
                    case "name":
                        if (thisCri.getOp().equals("contains")) SearchName(thisCri.getValue());
                        else SearchNameNegated(thisCri.getValue()) ;
                    case "description": SearchDescription(thisCri.getValue());
                    case "duration": {
                        int time = Integer.valueOf(thisCri.getValue());
                        SearchDuration(thisCri.getOp(), time);
                    }
                }
                for (PrimitiveTask t: getCrPResult()){
                    PrintPrimitiveTask(t.getTaskName());
                }
                for (CompositeTask t: getCrCResult()){
                    PrintCompositeTask(t.getTaskName());
                }
                ArrayList<PrimitiveTask> crPResult = new ArrayList<>();
                ArrayList<PrimitiveTask> crCResult = new ArrayList<>();
            }
        }
        for (int i = 0; i < Criterion.getBinaryCriterionName().length; i++){
            if (Criterion.getBinaryCriterionName()[i].equals(name)){
                int Indexcr1, Indexcr2, Operation;
                Indexcr1 = Criterion.getBinaryCriterion()[i][0];
                Indexcr2 = Criterion.getBinaryCriterion()[i][2];
                Operation = Criterion.getBinaryCriterion()[i][1];
                Search(Criterion.getCriterionArrayList().get(Indexcr1).getCriterionName());
                Search(Criterion.getCriterionArrayList().get(Indexcr2).getCriterionName());

                // <PrimitiveTask> crPResult = new ArrayList<>();
                // <CompositeTask> crCResult = new ArrayList<>();
                String now;
                for (int s = 0; s < getCrPResult().toArray().length; s++){
                    now = getCrPResult().get(s).getTaskName();
                    map.put(now, map.getOrDefault(now, 0) + 1);
                }

                if (Operation == 1) {
                    for (String Name : map.keySet()) {
                        if (map.get(Name) > 1) {
                            PrintPrimitiveTask(Name); // Duplicated --> &&
                        }
                    }
                } else if (Operation == 0){
                    for (String Name : map.keySet()) {
                        if (map.get(Name) >= 1) {
                            PrintPrimitiveTask(Name); // all --> ||
                        }
                    }
                }
                ArrayList<PrimitiveTask> crPResult = new ArrayList<>();
                ArrayList<PrimitiveTask> crCResult = new ArrayList<>();
            }
        }
    }

    /**
     * Print all criterions.
     */
    //Print out all the criteria defined. All criteria should be resolved to the form
    //containing only property names, op, value, logicOp, and IsPrimitive.
    public static void printCriterion(){
        if (Criterion.getCriterionArrayList().isEmpty()) System.out.println("No criterion is set.");
        for (Criterion c1: Criterion.getCriterionArrayList()){
            //Criterion NEW = new Criterion(criterionName, Property, op, value);
            System.out.println("Name: "+ c1.getCriterionName() +" Property: "+ c1.getProperty() +" Operation: "+ c1.getOp() +" Value: "+ c1.getValue());
        }
        for (int i = 0; i < Criterion.getBinaryCriterionNameSize(); i++){
            String BCName = Criterion.getBinaryCriterionName()[i];
            int cr1index = Criterion.getBinaryCriterion()[i][0];
            int cr2index = Criterion.getBinaryCriterion()[i][2];
            int opnum = Criterion.getBinaryCriterion()[i][1];
            String cr1 = Criterion.getCriterionArrayList().get(cr1index).getCriterionName();
            String cr2 = Criterion.getCriterionArrayList().get(cr2index).getCriterionName();
            String op = "";
            if (opnum == 0) {op = "||";} else {op = "&&";}
            System.out.println("Name: "+BCName+" Logic:("+cr1+" "+op+" "+cr2+")");
        }
    }


    /**
     * Store the tasks and criteria into a file at the specified path.
     *
     * @param path The path of the file to store the data.
     */
    // Add this method to the TMS class
    public boolean StorePath (String path) {
        try {
            // Ensure the directory structure exists
            File directory = new File(path).getParentFile();
            if (!directory.exists()) {
                directory.mkdirs();
            }

            // Convert tasks and criteria into byte stream
            ByteArrayOutputStream byteStream = new ByteArrayOutputStream();
            ObjectOutputStream out = new ObjectOutputStream(byteStream);
            out.writeObject(getsTasks());
            out.writeObject(getcTasks());
            out.close();

            // Save byte stream into a file
            byte[] data = byteStream.toByteArray();
            FileOutputStream fileOut = new FileOutputStream(path);
            fileOut.write(data);
            fileOut.close();d
            return true;
        } catch (IOException e) {
            e.printStackTrace();
        }

        return false;
    }

    /**
     * Load tasks and criteria from a file at the specified path.
     *
     * @param path The path of the file to load the data from.
     */
    public void LoadPath(String path) {
        try {
            // Load byte stream from a file
            FileInputStream fileIn = new FileInputStream(path);
            byte[] data = new byte[fileIn.available()];
            fileIn.read(data);
            fileIn.close();

            // Convert byte stream into tasks and criteria
            ByteArrayInputStream byteStream = new ByteArrayInputStream(data);
            ObjectInputStream in = new ObjectInputStream(byteStream);

            // Discard existing tasks and criteria
            getsTasks().clear();
            getcTasks().clear();

            // Load tasks and criteria from the file
            getsTasks().addAll((ArrayList<PrimitiveTask>) in.readObject());
            getcTasks().addAll((ArrayList<CompositeTask>) in.readObject());

            in.close();
        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    /**
     * Delete a task with the specified task name.
     *
     * @param taskName The name of the task to delete.
     */
    public void DeleteTask(String taskName) {
        if (IsTaskNameExist(taskName)) {
            Object Ptarget = getPrimitiveTask(taskName);
            Object Ctarget = getCompositeTask(taskName);
            if (isPrimitive((T) Ptarget)) {
                //确定了传入的这个名字是一个Primitive Task类对象,重新强制类型转换后可直接删除Primitive Task
                PrimitiveTask tgt = (PrimitiveTask) Ptarget;
                if (tgt.getPrimitiveTaskPrerequest().substring(1,tgt.getPrimitiveTaskPrerequest().length()-1).equals(",")){
                    getsTasks().remove(tgt);
                    System.out.println("Primitive task: " + taskName + " is now deleted.");
                }else{
                    System.out.println("Primitive task: " + taskName + " cannot be deleted since it has prerequest!");
                    return;
                }

            } else {//否则传入的这个名字是一个Composite Task类对象，要获取到他的subtask后两个一起删除
                CompositeTask tgt = (CompositeTask) Ctarget;
                String[] subList = tgt.getSubTask().split(",");
                System.out.println("Composite task: " + taskName + " is now deleted");
                for (String str : subList){
                    if(str.charAt(0)=='['){
                        str=str.substring(1,str.length());
                    }
                    if(str.charAt(str.length()-1)==']'){
                        str=str.substring(0,str.length()-1);
                    }

                        if (IsTaskNameExist(str)) {
                            System.out.println("its sub-task: " + str + " is now deleted");
                            PrimitiveTask cp = getPrimitiveTask(str);
                            getsTasks().remove(cp);
                        } else {
                            System.out.println("its sub-task: " + str + " is not exist anymore");
                            continue;
                        }
                    }
                    getcTasks().remove(tgt);
                }

            }else{
                System.out.println("Task: " + taskName + " is not exist.");
                return;
        }
    }
    /**
     * Quit the application.
     */

    public static void Quit () {
        System.exit(0);
    }


}