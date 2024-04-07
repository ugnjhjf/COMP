package hk.edu.polyu.comp.comp2021.tms.model;

import org.junit.Test;

import static org.junit.Assert.*;
/**
 * Test case for checking the validity of task properties.
 */
public class PropertyVerifyTest {
    /**
     * Test case for checking the validity of task properties.
     */
    @Test
    public void isPropertyValid() {
        assertTrue(PropertyVerify.isPropertyValid("name"));
        assertTrue(PropertyVerify.isPropertyValid("description"));
        assertTrue(PropertyVerify.isPropertyValid("prerequisities"));
        assertTrue(PropertyVerify.isPropertyValid("subtasks"));
        assertFalse(PropertyVerify.isPropertyValid("aaa"));

    }
}