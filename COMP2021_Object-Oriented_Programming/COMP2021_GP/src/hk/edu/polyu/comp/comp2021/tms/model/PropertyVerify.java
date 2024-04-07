package hk.edu.polyu.comp.comp2021.tms.model;
/**
 * Represents a utility class for property verification in the Task Management System.
 */
public class PropertyVerify {
    /**
     * Checks if a given property is valid.
     *
     * @param property The property to be checked.
     * @return {@code true} if the property is valid, {@code false} otherwise.
     */
    public static boolean isPropertyValid(String property) {
        switch (property) {
            case "name":
                return true;
            case "description":
                return true;
            case "prerequisities":
                return true;
            case "subtasks":
                return true;
            default:
                return false;
        }
    }
}
