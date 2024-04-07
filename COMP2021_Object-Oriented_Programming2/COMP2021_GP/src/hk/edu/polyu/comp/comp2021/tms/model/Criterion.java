package hk.edu.polyu.comp.comp2021.tms.model;

import java.util.ArrayList;

/**
 * Represents a criterion used for defining conditions or constraints.
 */
public class Criterion {

    private String criterionName;

    private String Property;

    private String op;

    private String value;

    private static ArrayList<Criterion> criterionArrayList = new ArrayList<Criterion>();

    private static int BinaryCriterionNameSize = 10;

    private static String[] BinaryCriterionName = new String[getBinaryCriterionNameSize()];

    private static int[][] BinaryCriterion = new int[getBinaryCriterionNameSize()][3];

    private static int CountOfBC = 0;


    /**
     * Constructs a new instance of the {@link Criterion} class with the specified criterion name, property, operator, and value.
     *
     * @param criterionName The name of the criterion.
     * @param Property      The property associated with the criterion.
     * @param op            The operator used for comparison.
     * @param value         The value used for comparison.
     */
    public Criterion(String criterionName, String Property, String op, String value) {
        this.setCriterionName(criterionName);
        this.setProperty(Property);
        this.setOp(op);
        this.setValue(value);
    }

    /**
     * The list of criteria.
     * @return the criterion array list
     */
    public static ArrayList<Criterion> getCriterionArrayList() {
        return criterionArrayList;
    }

    /**
     * @param criterionArrayList assign criterion array list to a variable
     */
    public static void setCriterionArrayList(ArrayList<Criterion> criterionArrayList) {
        Criterion.criterionArrayList = criterionArrayList;
    }

    /**
     * The size of name of binary criteria.
     * @return the size of name of binary criterion
     */
    public static int getBinaryCriterionNameSize() {
        return BinaryCriterionNameSize;
    }

    /**
     * @param binaryCriterionNameSize define the size of the binary criterion name list
     */
    public static void setBinaryCriterionNameSize(int binaryCriterionNameSize) {
        BinaryCriterionNameSize = binaryCriterionNameSize;
    }


    /**
     * @return Binary criteria name
     */
    public static String[] getBinaryCriterionName() {
        return BinaryCriterionName;
    }

    /**
     * @param binaryCriterionName create a binary criterion name list
     */
    public static void setBinaryCriterionName(String[] binaryCriterionName) {
        BinaryCriterionName = binaryCriterionName;
    }

    /**
     * The binary criteria.
     * @return BinaryCriterion
     */
    public static int[][] getBinaryCriterion() {
        return BinaryCriterion;
    }

    /**
     * @param binaryCriterion create a binary criterion list
     */
    public static void setBinaryCriterion(int[][] binaryCriterion) {
        BinaryCriterion = binaryCriterion;
    }

    /**
     * The count of binary criteria.
     * @return count of binary criteria
     */
    public static int getCountOfBC() {
        return CountOfBC;
    }

    /**
     * The count of binary criteria.
     * @param countOfBC  set count of criterion
     */
    public static void setCountOfBC(int countOfBC) {
        CountOfBC = countOfBC;
    }

    /**
     * Set the name for the Critrerion
     * @param name taskname
     */
    public void setCriterionName(String name) {
        this.criterionName = name;
    }

    /**
     * Set the property of Criterion
     * @param pro property
     */
    public void setProperty(String pro) {
        this.Property = pro;
    }

    /**
     * Set the operator
     * @param op operator
     */
    public void setOp(String op) {
        this.op = op;
    }

    /**
     * Set the value of Criterion
     * @param val value
     */
    public void setValue(String val) {
        this.value = val;
    }

    /**
     * The name of the criterion.
     */ /**
     * Get the Criterion Name
     * @return criterionName
     */
    public String getCriterionName() {
        return criterionName;
    }

    /**
     * The property associated with the criterion.
     */ /**
     *Get the property of Criterion
     * @return Property
     */
    public String getProperty() {
        return Property;
    }

    /**
     * The operator used in the criterion.
     */ /**
     * Get the operator of Criterion
     * @return operator
     */
    public String getOp() {
        return op;
    }

    /**
     * The value compared in the criterion.
     */ /**
     * Get the value of Criterion
     * @return value
     */
    public String getValue() {
        return value;
    }

    /**
     * Search for a criterion based on its name
     *
     * @param name the name of the criterion
     * @return the criterion in Criterion data type
     */
    public static Criterion SearchCri(String name){
        for (Criterion c1: criterionArrayList){
            if (c1.getCriterionName().equals(name)) return c1;
        }
        return null;
    }

    /**
     * Defines a basic criterion with the specified criterion name, property, operator, and value.
     *
     * @param criterionName The name of the criterion.
     * @param Property      The property associated with the criterion.
     * @param op            The operator used for comparison.
     * @param value         The value used for comparison.
     */
    public static void DefineBasicCriterion(String criterionName, String Property, String op, String value) {
        Criterion NEW = new Criterion(criterionName, Property, op, value);
        criterionArrayList.add(NEW);
    }

    /**
     * @param c add criterion to list
     */
    public static void AddtoList(Criterion c){
        criterionArrayList.add(c);
    }

    /**
     * Defines a negated criterion based on the specified criterion name and another criterion.
     *
     * @param name1 The name of the negated criterion.
     * @param name2 The original criterion to be negated.
     * @throws IllegalArgumentException If the negated criterion definition is not valid.
     */
    public static void DefineNegatedCriterion(String name1, String name2) {

        Criterion c1 = SearchCri(name2);
        if (c1 == null) System.out.println("Criterion "+name2+" does not exist.");
        else{
            if (c1.getCriterionName().equals(name2)) {
                String thisPro = c1.getProperty();
                String thatOp = c1.getOp();
                String thatValue = c1.getValue();

                if (thisPro.equals("name") || thisPro.equals("description")) {
                    String thisOp = "does not contain";
                    Criterion NEW = new Criterion(name1, thisPro, thisOp, thatValue);
                    getCriterionArrayList().add(NEW);
                } else if (thisPro.equals("duration")) {
                    String thisOp;
                    switch (thatOp) {
                        case ">":
                            thisOp = "<=";
                            break;
                        case "<":
                            thisOp = ">=";
                            break;
                        case ">=":
                            thisOp = "<";
                            break;
                        case "<=":
                            thisOp = ">";
                            break;
                        case "==":
                            thisOp = "!=";
                            break;
                        case "!=":
                            thisOp = "==";
                            break;
                        default:
                            throw new IllegalArgumentException("Not a valid operation.");
                    }
                    Criterion NEW = new Criterion(name1, thisPro, thisOp, thatValue);
                    getCriterionArrayList().add(NEW);
                }
            }
        }

    }
    /**
     * Defines a binary criterion based on the specified criterion names, logical operator, and two criteria.
     *
     * @param name1    The name of the binary criterion.
     * @param name2    The first criterion.
     * @param logicOp  The logical operator ('||' for OR, '&&' for AND).
     * @param name3    The second criterion.
     * @throws IllegalArgumentException If the binary criterion definition is not valid.
     */

    public static void DefineBinaryCriterion(String name1, String name2, String logicOp, String name3) {

        Criterion c1 = SearchCri(name2);
        Criterion c2 = SearchCri(name3);

        int IndexCriterion1 = getCriterionArrayList().indexOf(c1);
        int IndexCriterion2 = getCriterionArrayList().indexOf(c2);
        int OP = 8;
        if (logicOp.equals("||")) OP = 0;
        else if (logicOp.equals("&&")) OP = 1;

        getBinaryCriterionName()[getCountOfBC()] = name1;
        getBinaryCriterion()[getCountOfBC()][0] = IndexCriterion1;
        getBinaryCriterion()[getCountOfBC()][1] = OP;
        getBinaryCriterion()[getCountOfBC()][2] = IndexCriterion2;

        setCountOfBC(getCountOfBC() + 1);
    }
}
