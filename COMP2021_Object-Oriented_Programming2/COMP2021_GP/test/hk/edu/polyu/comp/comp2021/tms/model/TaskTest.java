package hk.edu.polyu.comp.comp2021.tms.model;

import org.junit.Test;

import static org.junit.Assert.*;
/**
 * Test class for the Task class.
 */
public class TaskTest {
    private static final float ORG_VALUE = 0.5f;
    private static final double TEST_VALUE = 0.7;

    /**
     * Test case for creating a task with a name and description.
     */
    @Test
    public void CreateTaskTest()
    {
        Task t1=new Task("Task1","Descibe");
        assertEquals("Task1",t1.getTaskName());
    }
    /**
     * Test case for creating a task with a name, description, and duration.
     */
    @Test
    public void createTaskTest2() {
        double orgValue = ORG_VALUE;
        String taskName = "Task2";
        String taskDescription = "Describe";
        double testValue = TEST_VALUE;
        String newDescription = "New Desc";

        Task t1 = new Task(taskName, taskDescription, orgValue);

        assertEquals(taskName, t1.getTaskName());

        t1.setTaskName(taskName);
        t1.setDuration(testValue);
        t1.setTaskDesc(newDescription);

        assertEquals(newDescription, t1.getTaskDesc());
        assertEquals(testValue, t1.getDuration(), testValue);
    }

}