package hk.edu.polyu.comp.comp2021.tms.model;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Unit tests for the CompositeTask class.
 */
class CompositeTaskTest {
    /**
     * Test case for creating a composite task and getting the task name.
     */
    @Test
    void CreateCompositeTask() {
        CompositeTask c1 = new CompositeTask("Task3", "Some Describe", "Task1,Task2");
        assertEquals("Task3", c1.getTaskName());
    }

    /**
     * Test case for creating a composite task and getting the sub tasks.
     */
    @Test
    void CreateCompositeTask2() {
        CompositeTask c1 = new CompositeTask("Task4", "Some Describe", "Task1,Task2");
        assertEquals("[Task1,Task2]", c1.getSubTask());
    }
}