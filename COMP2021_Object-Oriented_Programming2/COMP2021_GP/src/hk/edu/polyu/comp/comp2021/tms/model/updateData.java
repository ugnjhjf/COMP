package hk.edu.polyu.comp.comp2021.tms.model;

import java.util.ArrayList;
/**
 The updateData class is responsible for updating task data.
 */
public class updateData {
        /**
         * Update the specified task with the provided property and data.
         *
         * @param task     The task to be updated.
         * @param property The property of the task to be updated.
         * @param data     The new data to be assigned to the property.
         */
        public void updateTask(Task task,String property,String data) {
            if (task instanceof PrimitiveTask) {
                PrimitiveTask primitiveTask = (PrimitiveTask) task;
                updatePrimitiveTask((PrimitiveTask) task, property,data);
            } else if (task instanceof CompositeTask) {
                CompositeTask compositeTask = (CompositeTask) task;
                updateCompositeTask((CompositeTask) task, property, data);
            } else {
                System.out.println("Invalid task type.");
            }
        }
        /**
         * Update the properties of a primitive task.
         *
         * @param task     The primitive task to be updated.
         * @param property The property of the task to be updated.
         * @param data     The new data to be assigned to the property.
         */
        private void updatePrimitiveTask(PrimitiveTask task, String property, String data) {
            switch (property) {
                case "taskName":
                    task.setTaskName(data);
                    break;
                case "taskDesc":
                    task.setTaskDesc(data);
                    break;
                case "duration":
                    task.setDuration(Double.parseDouble(data));
                    break;
                default:
                    System.out.println("Invalid field.");
                    break;
            }
        }
        /**
         * Update the properties of a composite task.
         *
         * @param task     The composite task to be updated.
         * @param property The property of the task to be updated.
         * @param data     The new data to be assigned to the property.
         */
        private void updateCompositeTask(CompositeTask task,String property, String data) {
            switch (property) {
                case "taskName":
                    task.setTaskName(data);
                    break;
                case "taskDesc":
                    task.setTaskDesc(data);
                    break;
                case "subtasks":
                    String[] subtaskNames = data.split(",");
                    ArrayList<String> ans=new ArrayList<>();
                    for (String subtaskName : subtaskNames) {;
                        ans.add(subtaskName);
                    }
                    break;
                default:
                    System.out.println("Invalid field.");
                    break;
            }
        }

}
