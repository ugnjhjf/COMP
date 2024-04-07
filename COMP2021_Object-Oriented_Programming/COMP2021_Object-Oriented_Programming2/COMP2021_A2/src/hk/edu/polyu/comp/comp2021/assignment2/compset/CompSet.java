package hk.edu.polyu.comp.comp2021.assignment2.compset;

import java.util.ArrayList;
import java.util.List;

class CompSet<T> {

    /** Each CompSet uses at most 1023 buckets.   */
    private static final int NUBMER_OF_BUCKETS = 1023;

    /** An array of buckets as the storage for each set. */
    private final List<List<T>> storage;

    public CompSet() {
        storage = new ArrayList<>(NUBMER_OF_BUCKETS);
        for(int i = 0; i < NUBMER_OF_BUCKETS; i++){
            storage.add(new ArrayList<T>());
        }
    }

    /**
     * Initialize 'this' with the unique elements from 'elements'.
     * Throw IllegalArgumentException if 'elements' is null.
     */
    public CompSet(List<T> elements)  {
        // Add missing code here
        if(elements==null || elements.size()>NUBMER_OF_BUCKETS) throw new IllegalArgumentException();
        storage = new ArrayList<>(NUBMER_OF_BUCKETS);
        for (int i = 0; i < NUBMER_OF_BUCKETS; i++) {
            storage.add(new ArrayList<T>());
        }

        for (T ele : elements) {
            int index = getIndex(ele);
            List<T> bucket = storage.get(index);
            bucket.add(ele);
        }
    }


    /**
     * Get the total number of elements stored in 'this'.
     */
    public int getCount() {
        int count=0;
        for(List<T> firstList:storage)
        {
            count+= firstList.size();
        }
        return count;
    }

    public boolean isEmpty() {
        // Add missing code here
        return getCount()==0;
    }

    /**
     * Whether 'element' is contained in 'this'?
     */
    public boolean contains(T element) {
        // Add missing code here
        for(List<T> firstList:storage)
        {
            if(firstList.contains(element)) return true;
        }
        return false;
    }

    /**
     * Get all elements of 'this' as a list.
     */
    public List<T> getElements() {
        List<T> ans = new ArrayList<>();
        for(List<T> firstList:storage)
        {
            ans.addAll(firstList);
        }
        return ans;
    }

    /**
     * Add 'element' to 'this', if it is not contained in 'this' yet.
     * Throw IllegalArgumentException if 'element' is null.
     */
    public void add(T element) {
        List<T> destination = storage.get(getIndex(element));
        if(destination.contains(element)){
            return;
        }
        else{
            destination.add(element);
            return;
        }
    }


    /**
     * Two CompSets are equivalent is they contain the same elements.
     * The order of the elements inside each CompSet is irrelevant.
     */
    public boolean equals(Object other) {
        if (this == other) return true;
        if (!(other instanceof CompSet<?>)) return false;

        CompSet<?> otherSet = (CompSet<?>) other;

        List<T> currentElements = getElements();
        List<?> otherElements = otherSet.getElements();

        boolean isElementsNumberEqual=(currentElements.size()==otherElements.size() ? true : false);

        if(isElementsNumberEqual){
             for(T ele:currentElements)
             {
                 if(!(otherElements.contains(ele))) return false;
             }
             return true;
        }
        return false;
    }

    /**
     * Remove 'element' from 'this', if it is contained in 'this'.
     * Throw IllegalArgumentException if 'element' is null.
     */
    public void remove (T element) {
        List<T> destination = storage.get(getIndex(element));
        if(destination!=null)
        {
            destination.remove(element);
            return;
        }

    }
        //========================================================================== private methods

        private int getIndex (T element){
            return element.hashCode() % NUBMER_OF_BUCKETS;
        }
}


