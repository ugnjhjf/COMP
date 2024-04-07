package hk.edu.polyu.comp.comp2021.tms.model;

import java.util.ArrayList;
import java.io.Serializable;
/**
 * Represents a composite task in the Task Management System.
 */
public class CompositeTask extends Task implements Serializable {
    private ArrayList<String> subTasks = new ArrayList<String>();
    private boolean isComposite = true;
    private double duration;

    /**
     * Constructs a new instance of the {@link CompositeTask} class with the specified task name, task description,
     * and input tasks.
     *
     * @param taskName   The name of the composite task.
     * @param taskDesc   The description of the composite task.
     * @param inputTasks The input tasks as a string, separated by commas.
     */
    public CompositeTask(String taskName, String taskDesc, String inputTasks) {
        super(taskName, taskDesc);
        ArrayList<Double> dList=new ArrayList<>();
        this.getSubTasks().add(inputTasks);
        double tempDuration=0;
        for(String s: getSubTasks())
        {
            //取得当前的subtasks
            String[] subList = s.split(",");
            for (String str : subList){
                if(str.charAt(0)=='['){
                    str=str.substring(1,str.length());
                    PrimitiveTask task=TMS.getPrimitiveTask(str);
                    dList.add(task.getDuration());

                }
                if(str.charAt(str.length()-1)==']'){
                    str=str.substring(0,str.length()-1);
                    PrimitiveTask task=TMS.getPrimitiveTask(str);
                    dList.add(task.getDuration());
                }

                if (TMS.IsTaskNameExist(str)) {
                    PrimitiveTask cp = TMS.getPrimitiveTask(str);
                    PrimitiveTask task=TMS.getPrimitiveTask(str);
                    dList.add(task.getDuration());
                }   
            }
            for(int i=0;i<dList.size();i++){
                tempDuration+= dList.get(i);
            }

//            for(int i=0;i<TMS.sTasks.size();i++){
//                if(s==TMS.sTasks.get(i).getTaskName()){
//                    tempDuration+=TMS.sTasks.get(i).getDuration();
//                }
//            }
        }
        this.setDuration(tempDuration);
    }


    /**
     * Retrieves the subtasks associated with the composite task.
     *
     * @return The subtasks as a string.
     */
    public String getSubTask() {
        return getSubTasks().toString();
    }

    /**
     * @return subTasks
     */
    public ArrayList<String> getSubTasks() {
        return subTasks;
    }

    /**
     * @param subTasks subTasks
     */
    public void setSubTasks(ArrayList<String> subTasks) {
        this.subTasks = subTasks;
    }

    /**
     * is the task is composite task
     * @return isComposite */
    public boolean isComposite() {
        return isComposite;
    }

    /**
     * @param composite composite
     */
    public void setComposite(boolean composite) {
        isComposite = composite;
    }

    @Override
    public double getDuration() {
        return duration;
    }

    @Override
    public void setDuration(double duration) {
        this.duration = duration;
    }
}