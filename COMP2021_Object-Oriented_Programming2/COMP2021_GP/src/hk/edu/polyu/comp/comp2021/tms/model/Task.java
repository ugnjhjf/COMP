package hk.edu.polyu.comp.comp2021.tms.model;

/**
 * Represents a Task in the Task Management System.
 */
public class Task {



    private String taskName;
    private String taskDesc;
    private double duration;
    private boolean isCompleted = false;


    /**
     * Constructs a Task object with the specified name, description, and duration.
     *
     * @param taskName  The name of the task.
     * @param taskDesc  The description of the task.
     * @param duration  The duration of the task.
     */
    public Task(String taskName, String taskDesc, double duration) {
        this.setTaskName(taskName);
        this.setTaskDesc(taskDesc);
        this.setDuration(duration);
    }

    /**
     * Constructs a Task object with the specified name and description.
     *
     * @param taskName  The name of the task.
     * @param taskDesc  The description of the task.
     */
    public Task(String taskName, String taskDesc) {
        this.setTaskName(taskName);
        this.setTaskDesc(taskDesc);
    }

    /**
     * Sets the name of the task.
     *
     * @param taskName  The name of the task.
     */
    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    /**
     * Sets the description of the task.
     *
     * @param taskDesc  The description of the task.
     */
    public void setTaskDesc(String taskDesc) {
        this.taskDesc = taskDesc;
    }

    /**
     * Sets the duration of the task.
     *
     * @param duration  The duration of the task.
     */
    public void setDuration(double duration) {
        this.duration = duration;
    }

    /** taskName  The name of the task.*/ /**
     * Retrieves the name of the task.
     *
     * @return The name of the task.
     */
    public String getTaskName() {
        return taskName;
    }

    /** taskDesc  The description of the task.*/ /**
     * Retrieves the description of the task.
     *
     * @return The description of the task.
     */
    public String getTaskDesc() {
        return taskDesc;
    }

    /** duration  The duration of the task.*/ /**
     * Retrieves the duration of the task.
     *
     * @return The duration of the task.
     */
    public double getDuration() {
        return duration;
    }

    /**  isCompleted Istaskcompleted
     * @return isCompleted*/
    public boolean isCompleted() {
        return isCompleted;
    }

    /**
     * @param completed isCompleted
     */
    public void setCompleted(boolean completed) {
        isCompleted = completed;
    }
}