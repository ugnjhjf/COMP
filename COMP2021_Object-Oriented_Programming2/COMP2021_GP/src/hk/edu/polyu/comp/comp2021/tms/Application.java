package hk.edu.polyu.comp.comp2021.tms;

import hk.edu.polyu.comp.comp2021.tms.model.Criterion;
import hk.edu.polyu.comp.comp2021.tms.model.Menu;
import hk.edu.polyu.comp.comp2021.tms.model.TMS;

import java.util.Scanner;

import static hk.edu.polyu.comp.comp2021.tms.model.TMS.PrintCompositeTask;
import static hk.edu.polyu.comp.comp2021.tms.model.TMS.PrintPrimitiveTask;

/**
 * The main application class for the Task Management System (TMS).
 */
public class Application {

    private static final double DEFAULT_DUR = 0.1;

    /**
     * The entry point of the TMS application.
     */
    public static void main() {
        TMS tms = new TMS();

        // Create default tasks
        double default_dur;
        default_dur = DEFAULT_DUR;

        tms.CreatePrimitiveTask("Task1", "This is a default Primitive Task", default_dur, ",");
        tms.CreateCompositeTask("Task2", "This is a DEFAULT Composite Task", "Task1");
//        tms.CreateCompositeTask("Task3","This is a DEFAULT Composite Task", "NONE");
//        tms.CreateCompositeTask("TestEarly","Get the smallest time","Task1,TaskA");
//        Criterion.DefineBasicCriterion("Criterion1", "name","contains", "Task1");
//        Criterion.DefineBasicCriterion("Criterion2", "duration",">=", "0.2");
//        tms.ReportDuration("Task2");
        tms.PrintAllTasks();
//
//        tms.ReportEarliestFinshTime("TaskEarly");
//
//        String filePath = "D:\\OneDrive\\OOP_GP\\COMP2021_GP\\src\\hk\\edu\\polyu\\comp\\comp2021\\tms\\file.dat";
//        tms.StorePath(filePath);

        String input;
        Scanner sc = new Scanner(System.in);
        TMS T1 = new TMS();

        // Main menu loop
        while (true) {
            Menu.showFirstMenu();
            input = sc.nextLine();

            switch (input) {
                case "1":
                    System.out.println("You have chosen Create Primitive Task.");
                    System.out.print("Now please enter the task [name] of Primitive Task: ");
                    Scanner pInput = new Scanner(System.in);
                    String inTaskname = pInput.nextLine();
                    System.out.print("Now please enter the task [description] of Primitive task: ");
                    String inTaskdes = pInput.nextLine();
                    System.out.print("Now please enter the [prerequisites] of the task \n(If you don't want it to have prerequisites, just simply type ','): ");
                    String inTaskpre = pInput.nextLine();
                    System.out.print("Now please enter the task [duration]: ");
                    double inTaskdur = pInput.nextDouble();

                    T1.CreatePrimitiveTask(inTaskname, inTaskdes, inTaskdur, inTaskpre);
                    break;

                case "2":
                    System.out.println("You have chosen Create Composite Task.");
                    System.out.print("Now please enter the task [name] of Composite Task: ");
                    Scanner cInput = new Scanner(System.in);
                    String cTaskname = cInput.nextLine();
                    System.out.print("Now please enter the task [description] of Composite task: ");
                    String cTaskdes = cInput.nextLine();
                    System.out.print("Now please enter the [subtask(name)]2 of the task: ");
                    String cTaskSubtask = cInput.nextLine();
                    T1.CreateCompositeTask(cTaskname, cTaskdes, cTaskSubtask);
                    break;

                case "3":
                    System.out.println("You have chosen to delete a task.");

                    Menu.showDeleteTaskInstruction();
                    Scanner dtool = new Scanner(System.in);
                    String dName = dtool.nextLine();
                    T1.DeleteTask(dName);
                    break;

                case "4":
                    System.out.println("You have chosen to change a task with specific property.");
                    System.out.print("Now please enter the task name of Task: ");
                    Scanner cTool = new Scanner(System.in);
                    String inName = cTool.nextLine();
                    System.out.print("Enter the property you want to change\n('taskName' or 'taskDesc' or 'duration' ): ");
                    String inProp = cTool.nextLine();
                    System.out.print("Value of the property: ");
                    if (inProp.equals("description") || inProp.equals("taskName")) {
                        String inValue = cTool.nextLine();
                        T1.changeTask(inName, inProp, inValue);
                    } else {
                        double inValue = cTool.nextDouble();
                        T1.changeTask(inName, inProp, inValue);
                    }
                    break;

                case "5":
                    Menu.showPrintTaskInstruction();
                    Scanner printTaskInput = new Scanner(System.in);
                    String tempPrintTask = printTaskInput.nextLine();
                    PrintPrimitiveTask(tempPrintTask);
                    break;

                case "6":
                    Menu.showPrintTaskInstruction();
                    Scanner printTaskInput1 = new Scanner(System.in);
                    String tempPrintTask2 = printTaskInput1.nextLine();
                    PrintCompositeTask(tempPrintTask2);
                    break;

                case "7":
                    T1.PrintAllTasks();
                    break;

                case "8":
                    System.out.println("You have chosen Create Basic Criterion.");
                    System.out.print("Now please enter criterion name: ");
                    Scanner crInput = new Scanner(System.in);
                    String BasicCrname = crInput.nextLine();
                    System.out.print("Now please enter property: ");
                    String BasicCrpro = crInput.nextLine();
                    System.out.print("Now please enter operation: ");
                    String BasicCrop = crInput.nextLine();
                    System.out.print("Now please enter value: ");
                    String BasicCrvalue = crInput.nextLine();
                    Criterion.DefineBasicCriterion(BasicCrname, BasicCrpro, BasicCrop, BasicCrvalue);
                    break;

                case "9":
                    System.out.println("You have chosen Create Negated Criterion.");
                    System.out.print("Now please enter new criterion name: ");
                    Scanner crNInput = new Scanner(System.in);
                    String NCrname = crNInput.nextLine();
                    System.out.print("Now please enter one existed basic criterion name: ");
                    String EBCrname = crNInput.nextLine();
                    Criterion.DefineNegatedCriterion(NCrname,EBCrname);
                    break;

                case "10":
                    System.out.println("You have chosen Create Binary Criterion.");
                    System.out.print("Now please enter new criterion name: ");
                    Scanner crBInput = new Scanner(System.in);
                    String BCrname = crBInput.nextLine();
                    System.out.print("Now please enter one existed basic criterion name: ");
                    String ECrname1 = crBInput.nextLine();
                    System.out.print("Now please enter the operation ('||' or '&&'): ");
                    String OP = crBInput.nextLine();
                    System.out.print("Now please enter another existed basic criterion name: ");
                    String ECrname2 = crBInput.nextLine();
                    Criterion.DefineBinaryCriterion(BCrname,ECrname1,OP,ECrname2);
                    break;

                case "11":
                    TMS.printCriterion(); break;

                case "12":
                    System.out.print("Input a task name to report duration: ");
                    Scanner reportDuration = new Scanner(System.in);
                    String reportTaskName=reportDuration.nextLine();

                    double tempDuration1=T1.ReportDuration(reportTaskName);
                    if(tempDuration1!=-1.0)
                    {
                        System.out.println(reportTaskName + ": " + T1.ReportDuration(reportTaskName));
                        }
                    else{
                        System.out.println(reportTaskName +" Not exist.");
                    }

                    break;

                case "13":
                    System.out.print("Input a task name to report earliest duration: ");
                    Scanner reportDurationEarliest = new Scanner(System.in);
                    String reportTaskName2=reportDurationEarliest.nextLine();

                    double tempDuration2=T1.ReportDuration(reportTaskName2);
                    if(tempDuration2!=-1.0)
                    {
                        System.out.println(reportTaskName2 + ": " + T1.ReportDuration(reportTaskName2));
                    }
                    else{
                        System.out.println(reportTaskName2 +" Not exist.");
                    }


                case "16":
                    System.out.print("Enter the path to save the data: ");
                    Scanner savePathInput = new Scanner(System.in);
                    String savePath = savePathInput.nextLine();

                    // Assuming T1 is an instance of the TMS class
                    T1.StorePath (savePath);
                    System.out.println("Data saved to " + savePath);
                    break;

                case "17":

                    System.out.println("You have chosen to load tasks and criteria from a file.");
                    System.out.print("Please enter the file path to load from: ");
                    Scanner loadInput = new Scanner(System.in);
                    String loadFilePath = loadInput.nextLine();

                    try {
                        tms.LoadPath(loadFilePath);
                        System.out.println("Tasks and criteria loaded from the file successfully.");
                    } catch (Exception e) {
                        System.out.println("Error loading tasks and criteria from the file. Please check the file path and try again.");
                        e.printStackTrace();
                    }
                    break;

                case "-1":
                    Menu.callExit();
                    break;

                default:
                    System.out.println("Invalid input. Input again");
                    break;
            }
        }
    }
}