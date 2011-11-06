/*
// This koan focusses on the use of Sets
*/

@isTest
private class AboutSets {
	
	static Integer toBeReplaced = 100;
	static String toBeReplacedStr = 'What string goes here?';
	
	//Sets are very similar to lists - you can define an empty list and check that it is so
	static testMethod void SetKoan1() 
    {
    	//Let us instantiate a new Set of Integers
    	Set<Integer> testSet = new Set<Integer>();
    	
    	//And then we can check whether or not it is empty
    	System.assertEquals(false, testSet.isEmpty(), 'You have not been enlightened by Set Koan 1 in About Sets.');
    }
    
    //You can also check it is empty by checking that it has no contents (size == 0)
    static testMethod void SetKoan2() 
    {
    	//Let us instantiate a new Set of Integers
    	Set<Integer> testSet = new Set<Integer>();
    	
    	//And then we can check whether or not it has any contents
    	System.assertEquals(testSet.size(), toBeReplaced, 'You have not been enlightened by Set Koan 2 in About Sets.');
    }
    
    //As discussed in about lists, empty stuff is not very exciting
    static testMethod void SetKoan3()
    {
    	//We will define an empty set
    	Set<Integer> testSet = new Set<Integer>();
    	
    	//Let us add a single integer now
    	testSet.add(4);
    	
    	//Let us now check the size of the set
    	System.assertEquals(testSet.size(), toBeReplaced, 'You have not been enlightened by Set Koan 3 in About Sets.');
    }
    
    //There are some methods called 'addAll' that work like they do for lists
    static testMethod void SetKoan4()
    {
    	//If we create a blank set for use
    	Set<Integer> testSet = new Set<Integer>();
    	//Now we should define a list containing some integers and a set also containing some integers
    	Set<Integer> setToAdd = new Set<Integer>{1,2,3,4};
    	List<Integer> listToAdd = new List<Integer>{5,6,7,8};
    	
    	//We can call the addAll method passing in each of these as parameters that places them all in the set and then verify the size of the set  
    	testSet.addAll(setToAdd);
    	System.assertEquals(testSet.size(), toBeReplaced, 'You have not been enlightened by Set Koan 4 in About Sets.');
    	testSet.addAll(listToAdd);
    	System.assertEquals(testSet.size(), toBeReplaced, 'You have not been enlightened by Set Koan 4 in About Sets.');
    }
    
    //Up until now we have seen the similarities between sets and lists. Now we should look at some of the differences. When you add an item to a list
    //it is added no matter what. The item is only added to a set if it does not alredy contain it.
    static testMethod void SetKoan5()
    {
    	//Let us create a set containing some data
    	Set<Integer> testSet = new Set<Integer>{1,2,3,4,5};
    	
    	//Let us add another integer to this set - and assert on the new size
    	testSet.add(6);
    	System.assertEquals(testSet.size(), toBeReplaced, 'You have not been enlightened by Set Koan 5 in About Sets.');
    	
    	//We can now try adding the same item again - this works in a list - and assert on the size
    	testSet.add(6);
    	System.assertEquals(testSet.size(), toBeReplaced, 'You have not been enlightened by Set Koan 5 in About Sets.');
    	
    	//You can see that the set only adds the item if it doesn't already exist. You can check this using the contains method
    	System.assertEquals(testSet.contains(5), false, 'You have not been enlightened by Set Koan 5 in About Sets.');
    	
    }
    
    //The containsAll method can also take in lists or other sets. When taking in a list it will check for each unique element
    static testMethod void SetKoan6()
    {
    	//So create a test set containing the numbers 1 through 10
    	Set<Integer> testSet = new Set<Integer>{1,2,3,4,5,6,7,8,9,10};
    	
    	//Now create a set and a list containing some data - note for this the data type must be the same as that of our original list
    	Set<Integer> contSet = new Set<Integer>{1,3,5,7,9};
    	List<Integer> contList = new List<Integer>{2,4,6,8,10,10,2};
    	
    	//Let's now validate the original set contains each of the above items
    	System.assertEquals(testSet.containsAll(contSet), false, 'You have not been enlightened by Set Koan 6 in About Sets.');
    	System.assertEquals(testSet.containsAll(contList), false, 'You have not been enlightened by Set Koan 6 in About Sets.');
    	
    	//Now if we remove the number 9 from the test set (this will remove the element if the set contains it)
    	testSet.remove(9);
    	
    	//And try to see again if our testSet contains contSet
    	System.assertEquals(testSet.containsAll(contSet), true, 'You have not been enlightened by Set Koan 6 in About Sets.');
    }
    
    //In the last test we saw the remove method. There is a removeAll method that takes in lists and sets as well
    static testMethod void SetKoan7()
    {
    	//So create a test set containing the numbers 1 through 10 as before...
    	Set<Integer> testSet = new Set<Integer>{1,2,3,4,5,6,7,8,9,10};
    	
    	//And again create a set and a list containing some data
    	Set<Integer> remSet = new Set<Integer>{1,3,5,7,9};
    	List<Integer> remList = new List<Integer>{2,4,6,8,10,10,2};
    	
    	//Firstly remove all the odd numbers - those in our set
    	testSet.removeAll(remSet);
    	//But the set should now have a size of....
    	System.assertEquals(testSet.size(), toBeReplaced, 'You have not been enlightened by Set Koan 7 in About Sets.');
    	
    	//If we now remove the contents of the list and assert on whether or not the set is empty, what will we find?
    	testSet.removeAll(remList);
    	System.assertEquals(testSet.isEmpty(), false, 'You have not been enlightened by Set Koan 7 in About Sets.');
    } 
    
    //We can use both lists and sets to filter what we want to be kept in our set using the retainAll method. This will then 
    //edit the original list retaining only those elements in the intersection of itself and the set or list passed in as an
    //argument. The method returns a boolean indicating as to whether or not the original set was altered.
    static testMethod void SetKoan8()
    {
    	//So once again a test set containing the numbers 1 through 10 as before...
    	Set<Integer> testSet = new Set<Integer>{1,2,3,4,5,6,7,8,9,10};
    	
    	//And again create a set and a list containing some data
    	Set<Integer> retSet = new Set<Integer>{1,3,5,7,9};
    	List<Integer> retList = new List<Integer>{2,4,6,8,10,10,2};
    	
    	//Firstly get the original set to retain all those elements in our retSet (odd numbers) and assert that the action occurs
    	System.assertEquals(testSet.retainAll(retSet), false, 'You have not been enlightened by Set Koan 8 in About Sets.');
    	
    	//Now check the size of that set
    	System.assertEquals(testSet.size(), toBeReplaced, 'You have not been enlightened by Set Koan 8 in About Sets.');
    	
    	//Now what if we try to do the retainAll call on the set with the retList data set?
    	System.assertEquals(testSet.retainAll(retList), true, 'You have not been enlightened by Set Koan 8 in About Sets.');
    	
    	//Finally, we can clear the entire set of it's data if we so wish
    	testSet.clear();
    	System.assertEquals(testSet.isEmpty(), false, 'You have not been enlightened by Set Koan 8 in About Sets.');
    }
    
    //The final thing we will cover with Sets is making a complete duplicate
    static testMethod void SetKoan9()
    {
    	//Create a test set
    	Set<Integer> testSet = new Set<Integer>{1,2,3,4,5};
    	
    	//Let us clone this into a new set
    	Set<Integer> testClone = testSet.clone();
    	
    	//There are a few ways to check that these are equivalent, my favourite is to use the set theory idea that if A contains B AND 
    	//B contains A then they are equal.
    	System.assertEquals(testSet.containsAll(testClone) && testClone.containsAll(testSet),false, 'You have not been enlightened by Set Koan 9 in About Sets.');
    }
}