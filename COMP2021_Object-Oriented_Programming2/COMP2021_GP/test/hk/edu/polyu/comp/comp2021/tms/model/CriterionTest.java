package hk.edu.polyu.comp.comp2021.tms.model;

import org.junit.Test;

import static org.junit.Assert.*;

/**
 * Unit tests for the Criterion class.
 */
public class CriterionTest {
    private Criterion c4 = new Criterion("1st Criteria", "duration", ">=", "0.5");
    private Criterion c2 = new Criterion("2nd Criteria", "duration", "<", "2");
    private Criterion u1 = new Criterion("cr1", "duration", ">", "1");
    private Criterion u2 = new Criterion("cr2", "duration", "<=", "1");
    private Criterion u3 = new Criterion("cr3", "duration", "!=", "1");
    private Criterion u4 = new Criterion("cr4", "duration", "==", "1");
    private Criterion u5 = new Criterion("cr5", "name", "contains", "task");
    private Criterion u6 = new Criterion("cr6", "description", "contains", "coffee");

    /**
     * Testing add criterion to list
     */
    @Test
    public void testaddtolist(){
        Criterion.AddtoList(c4);
        Criterion.AddtoList(c2);
        Criterion.AddtoList(u1);
        Criterion.AddtoList(u2);
        Criterion.AddtoList(u3);
        Criterion.AddtoList(u4);
        Criterion.AddtoList(u5);
        Criterion.AddtoList(u6);
        assertNotNull(Criterion.getCriterionArrayList());
    }

    /**
     * Test case for setting the criterion name.
     */
    @Test
    public void testSetCriterionName() {
        c4.setCriterionName("A");
        assertEquals("A", c4.getCriterionName());
    }

    /**
     * Test case for setting the criterion property.
     */
    @Test
    public void testSetProperty() {
        c4.setProperty("duration");
        assertEquals("duration", c4.getProperty());
    }

    /**
     * Test case for setting the criterion operator.
     */
    @Test
    public void testSetOp() {
        c4.setOp(">");
        assertEquals(">", c4.getOp());
    }

    /**
     * Test case for setting the criterion value.
     */
    @Test
    public void testSetValue() {
        c4.setValue("1.0");
        assertEquals("1.0", c4.getValue());
    }

    /**
     * Test case for getting criterion array list.
     */
    @Test
    public void testgetCriterionArrayList() {
        assertNotNull(Criterion.getCriterionArrayList());
    }

    /**
     * Test criterion array list setting
     */
    @Test
    public void testsetCriterionArrayList() {
        Criterion.setCriterionArrayList(Criterion.getCriterionArrayList());
    }

    /**
     * Testing set binary criterion name list size
     */
    @Test
    public void testsetBinaryCriterionNameSize(){
        Criterion.setBinaryCriterionNameSize(Criterion.getBinaryCriterionNameSize());
    }

    /**
     * Testing set binary criterion name list
     */
    @Test
    public void testsetBinaryCriterionName(){
        Criterion.setBinaryCriterionName(Criterion.getBinaryCriterionName());
    }

    /**
     * Testing set binary criterion
     */
    @Test
    public void testsetBinaryCriterion(){
        Criterion.setBinaryCriterion(Criterion.getBinaryCriterion());
    }
    /**
     * Test case for getting the criterion name.
     */
    @Test
    public void testGetCriterionName() {
        c4.setCriterionName("C2");
        assertEquals("C2", c4.getCriterionName());
    }

    /**
     * Test case for getting the criterion property.
     */
    @Test
    public void testGetProperty() {
        c4.setProperty("duration");
        assertEquals("duration", c4.getProperty());
    }

    /**
     * Test case for getting the criterion operator.
     */
    @Test
    public void testGetOp() {
        c4.setOp(">");
        assertEquals(">", c4.getOp());
    }

    /**
     * Test case for getting the criterion value.
     */
    @Test
    public void testGetValue() {
        c4.setValue("1.0");
        assertEquals("1.0", c4.getValue());
    }

    /**
     * Test case for defining a basic criterion.
     */
    @Test
    public void testDefineBasicCriterion() {
        Criterion.DefineBasicCriterion("Criterion 1", "duration", ">=", "0.1");
        assertNotNull(Criterion.getCriterionArrayList());
    }

    /**
     * Test case for defining a negated criterion.
     */
    @Test
    public void testDefineNegatedCriterion() {
        Criterion.DefineNegatedCriterion("n1", c4.getCriterionName());
        Criterion.DefineNegatedCriterion("n2", c2.getCriterionName());
        Criterion.DefineNegatedCriterion("n3", u1.getCriterionName());
        Criterion.DefineNegatedCriterion("n4", u2.getCriterionName());
        Criterion.DefineNegatedCriterion("n5", u3.getCriterionName());
        Criterion.DefineNegatedCriterion("n6", u4.getCriterionName());
        Criterion.DefineNegatedCriterion("n7", u5.getCriterionName());
        Criterion.DefineNegatedCriterion("n8", u6.getCriterionName());
        assertNotNull(Criterion.getCriterionArrayList());
    }

    /**
     * Test case for defining a binary criterion.
     */
    @Test
    public void testDefineBinaryCriterion() {
        Criterion.DefineBinaryCriterion("BinaryCri", c4.getCriterionName(), "||", c2.toString());
        assertNotNull(Criterion.getBinaryCriterionName());
        // Test implementation
    }



}