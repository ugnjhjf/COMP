package hk.edu.polyu.comp.comp2021.tms.model;

import org.junit.Test;

import static org.junit.Assert.*;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import static org.junit.jupiter.api.Assertions.assertEquals;
/**
 * Test the TMS class.
 */
public class TMSTest {
    private TMS t1=new TMS();

    private final double testValue=0.5;
    /**
     * Test the IsTaskNameExist method.
     */

    public void isTaskNameExist() {
        getT1().CreatePrimitiveTask("Test Task 3","Desc", getTestValue(),",");
        assertNotNull(getT1().IsTaskNameExist("Test Task3"));
        getT1().CreateCompositeTask("Test Task 4","Desc","Task1,Task2");
        assertNotNull(TMS.IsTaskNameExist("Test Task4"));
    }

    /**
     * Test the TaskNameIndex method.
     */
    @Test
    public void taskNameIndex() {
        getT1().CreatePrimitiveTask("Test Task 5","Desc", getTestValue(),",");
        assertNotNull( getT1().TaskNameIndex("Test Task 5"));
        getT1().CreateCompositeTask("Composite Task 1","desc","Task1");
        assertNotNull(getT1().TaskNameIndex("Composite Task 1"));
        assertEquals(1, getT1().TaskNameIndex("Test Task 5"));
        assertEquals(-1, getT1().TaskNameIndex("No exist task"));
    }

    /**
     * Test the getPrimitiveTask method.
     */
    @Test
    public void getPrimitiveTask() {


    }

    /**
     * Test the getCompositeTask method.
     */
    @Test
    public void getCompositeTask() {
        CompositeTask testP=TMS.getCompositeTask("Test Task 3");
        assertNotNull(testP.getTaskName());
    }

    /**
     * Test the createPrimitiveTask method.
     */
    @Test
    public void createPrimitiveTask() {
        getT1().CreatePrimitiveTask("Test Task 1","Desc", getTestValue(),",");
        assertNotNull(getT1().getsTasks());
        getT1().CreatePrimitiveTask("Test Task 3","Desc",getTestValue());
        assertNotNull(getT1().getsTasks());
        assertTrue(getT1().isPrimitive("Test Task 1"));
    }

    /**
     * Test the CreateCompositeTask method.
     */
    @Test
    public void testCreateCompositeTask() {
        String taskName = "Composite Task 1";
        String taskDesc = "Description of Composite Task 1";
        String subTasks = "Subtask 1, Subtask 2, Subtask 3";

        CompositeTask compositeTask = getT1().CreateCompositeTask(taskName, taskDesc, subTasks);

        // Verify if the composite task is created successfully
        assertNotNull(compositeTask);
        assertEquals(taskName, compositeTask.getTaskName());
        assertEquals(taskDesc, compositeTask.getTaskDesc());
    }

    /**
     * Test the printPrimitiveTask method.
     */
    @Test
    public void printPrimitiveTask() {
        PrimitiveTask pt1=t1.CreatePrimitiveTask("Pt1","Desc",testValue,",");
        TMS.PrintPrimitiveTask("Pt1");
    }

    /**
    /**
     * Test the printCompositeTask method.
     */
    @Test
    public void printCompositeTask() {
        PrimitiveTask pt1=t1.CreatePrimitiveTask("Pt1","Desc",testValue,",");
        CompositeTask ct1=t1.CreateCompositeTask("Ct1","COMP desc","Pt1");
        assertNotNull(ct1);
    }

    /**
     * Test the printAllTasks method.
     */
    @Test
    public void printAllTasks() {
        assertNotNull(t1.getsTasks());
        assertEquals(0,t1.PrintAllTasks());
    }

    /**
     * Test the changeTask method.
     */
    @Test
    public void changeTask() {
        t1.changeTask("Task1","duration","0.5");
        t1.changeTask("Task2","taskDesc","descsd");
        t1.changeTask("Task3","taskName","descsd");

        assertNotNull(t1);
    }

    /**
     * Test the reportDuration method.
     */
    @Test
    public void reportDuration() {
        PrimitiveTask pt1=t1.CreatePrimitiveTask("Pt4","Desc",testValue,",");
       assertEquals(testValue,t1.ReportDuration("Pt4"));
       assertEquals(-1.0,t1.ReportDuration("PT"));
    }

    /**
     * Test the reportEarliestFinshTime2 method.
     */
    @Test
    public void reportEarliestFinshTime() {
        PrimitiveTask pt1=t1.CreatePrimitiveTask("Pt1","Desc",testValue,",");
        PrimitiveTask pt2=t1.CreatePrimitiveTask("Pt2","Desc",testValue,"Pt1");
        PrimitiveTask pt3=t1.CreatePrimitiveTask("Pt3","Desc",testValue,"Pt2");
        assertEquals(testValue,t1.ReportDuration("Pt3"));
        assertEquals(-1.0,t1.ReportDuration("PT"));
    }

    /**
     * Test the isPrimitive method.
     */
    @Test
    public void isPrimitive() {
        PrimitiveTask p1=t1.CreatePrimitiveTask("isPrim","isPrimdesc",testValue,",");
        assertTrue(t1.isPrimitive(p1));
    }

    /**
     * Test the defineBasicCriterion method.
     */
    @Test
    public void defineBasicCriterion() {
    }

    /**
     * Test the searchName method.
     */
    @Test
    public void searchName() {
    }

    /**
     * Test the searchDescription method.
     */
    @Test
    public void searchDescription() {
    }

    /**
     * Test the searchDuration method.
     */
    @Test
    public void searchDuration() {
    }

    /**
     * Test the search method.
     */
    @Test
    public void search() {
    }

    /**
     * Test the storePath method.
     */
    @Test
    public void StorePath() {

    }

    /**
     * Test the loadPath method.
     */
    @Test
    public void loadPath() {

    }

    /**
     * Test the deleteTask method.
     */
    @Test
    public void deleteTask() {

        getT1().CreatePrimitiveTask("Test Task 1","Desc", getTestValue(),",");
        getT1().CreatePrimitiveTask("Test Task 1","Desc", getTestValue(),",");
        getT1().CreatePrimitiveTask("Test Task 2","Desc", getTestValue(),"Task1");
        getT1().DeleteTask("Test Task1");
        getT1().DeleteTask("Test Task2");
        getT1().CreateCompositeTask("Test Task 3","Desc", "Test Task 1");
        getT1().DeleteTask("Test Task3");
        assertNotNull(getT1().getsTasks());


    }


    /**
     * @return testvalue
     */
    public double getTestValue() {
        return testValue;
    }

    /**
     * Test the TMS class.
     * @return t1
     */
    public TMS getT1() {
        return t1;
    }

    /**
     * @param t1 task
     */
    public void setT1(TMS t1) {
        this.t1 = t1;
    }
}