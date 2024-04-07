package hk.edu.polyu.comp.comp2021.tms.model;

import java.util.ArrayList;
import java.io.Serializable;

/**
 * Represents a primitive task.
 */
public class PrimitiveTask extends Task implements Serializable {



    private ArrayList<String> prerequisites = new ArrayList<String>();

    private int maniLevel = 0;

    private boolean isComposite = false;

    /**
     * Constructs a primitive task.
     *
     * @param name        The name of the task.
     * @param description The description of the task.
     * @param duration    The duration of the task.
     */
    public PrimitiveTask(String name, String description, double duration) {
        super(name, description, duration);
    }

    /**
     * Constructs a primitive task with prerequisites.
     *
     * @param name          The name of the task.
     * @param description   The description of the task.
     * @param duration      The duration of the task.
     * @param prerequisites The prerequisites for the task.
     */
    public PrimitiveTask(String name, String description, double duration, String prerequisites) {
        super(name, description, duration);
        if (this.getManiLevel() == 0) {
            this.setManiLevel(1);
        } else {
            this.setManiLevel(this.getManiLevel() + 1);
        }
        this.getPrerequisites().add(prerequisites);
    }

    /**
     * Returns the prerequisites of the primitive task.
     *
     * @return The string representation of the prerequisites.
     */
    public String getPrimitiveTaskPrerequest() {
        return getPrerequisites().toString();
    }


    /**
     * The prerequisites for the task.
     * @return prerequisites prerequisites;
     */
    public ArrayList<String> getPrerequisites() {
        return prerequisites;
    }

    /**
     * @param prerequisites prerequisites
     */
    public void setPrerequisites(ArrayList<String> prerequisites) {
        this.prerequisites = prerequisites;
    }

    /**
     * The manipulation level of the task.
     * @return maniLevel;
     */
    public int getManiLevel() {
        return maniLevel;
    }

    /**
     * @param maniLevel maniLevel
     */
    public void setManiLevel(int maniLevel) {
        this.maniLevel = maniLevel;
    }

    /**
     * Indicates whether the task is a composite task.
     * @return  isComposite
     */
    public boolean isComposite() {
        return isComposite;
    }

    /**
     * @param composite composite
     */
    public void setComposite(boolean composite) {
        isComposite = composite;
    }
}