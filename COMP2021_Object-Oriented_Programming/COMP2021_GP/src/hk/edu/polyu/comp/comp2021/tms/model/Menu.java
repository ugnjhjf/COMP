package hk.edu.polyu.comp.comp2021.tms.model;

/**
 * Represents the menu class for the Task Management System.
 */
public class Menu {
    /**
     * Displays the first menu of the Task Management System.
     * @return 0
     */
    public static int showFirstMenu(){

        System.out.println("Select an operation to do:");
        System.out.println("");
        System.out.println("1. Create a primitive task"); //CreateSimpleTask
        System.out.println("2. Create a composite task"); //CreateCompositeTask
        System.out.println("");
        System.out.println("3. Delete a task"); //DeleteTask
        System.out.println("");
        System.out.println("4. Change task's property");//ChangeTask
        System.out.println("");
        System.out.println("5. Print detail of a Primitive task"); //PrintTask
        System.out.println("6. Print detail of a Composite task"); //PrintTask
        System.out.println("7. Print detail of ALL tasks"); //PrintALL
        System.out.println("");
        System.out.println("");
        System.out.println("8. Create Basic Criterion");
        System.out.println("9. Create Negated Criterion based on one existed Basic Criterion");
        System.out.println("10. Create Binary Criterion");
        System.out.println("11. Print all Criterions created");
        System.out.println("");
        System.out.println("");
        System.out.println("12. Report task duration ");
        System.out.println("13. Report Earliest Finsh Time");

        System.out.println("16. Save file");
        System.out.println("17. Load file");

        System.out.println("Type -1 to exit the program");

        System.out.println("");
        System.out.println("");
        System.out.println("");

        System.out.print("Input the number for the function you want to use: "); //Ask input
        return 0;

    }

    /**
     * Displays the instruction for deleting a task.
     */
    public static void showDeleteTaskInstruction()
    {
        System.out.print("Input a task name for delete a task: ");
    }

    /**
     * Displays the instruction for printing a task's details.
     */
    public static void showPrintTaskInstruction(){
        System.out.println("Input a task name for print this task's details");
    }
    /**
     * Calls the exit method and displays a farewell message.
     */
    public static void callExit()
    {
        System.out.println("Thanks for using TMS system");
        TMS.Quit();
    }


}
