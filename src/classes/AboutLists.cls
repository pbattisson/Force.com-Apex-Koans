/*
// This koan will focus on Lists and the methods provided to a List object.
*/
@isTest
private class AboutLists {

	static Integer toBeReplaced = 100;

	//Empty lists and their lack of contents
    static testMethod void ListKoan1() 
    {
        //Create a new List instance containing strings
        List<String> strings = new List<String>();
        
        //What does our list contain? Fix the statement below
        System.assertEquals(strings.size(), toBeReplaced, 'You have not been enlightened by List Koan 1 in About Lists');
    }
    
    //How we can check that a list is empty
    static testMethod void ListKoan2()
    {
    	//Create an empty list as before
    	List<String> strings = new List<String>();
    	
    	//We can assert on the List being empty. Fix the statement below.
    	System.assertEquals(strings.isEmpty(), false, 'You have not been enlightened by List Koan 2 in About Lists');
    }
    
    //Empty lists are pretty boring
    static testMethod void ListKoan3()
    {
    	//Create a blank list
    	List<String> strings = new List<String>();
    	
    	//Add a value to it using the add method
    	strings.add('Some value');
    	
    	//What do we expect below
    	System.assertEquals(strings[0],'What string goes here?', 'You have not been enlightened by List Koan 3 in About Lists');
    	
    	//We can use array notation or get methods on the list object
    	System.assertEquals(strings.get(0), 'What string goes here?', 'You have not been enlightened by List Koan 3 in About Lists');
    }
    
    //We can also define lists more dynamically
    static testMethod void ListKoan4()
    {
    	//Create a list of objects
    	List<String> strings = new List<String>{'first', 'second', 'third'};
    	
    	//Now we can make some assertions on different list members
    	System.assertEquals('second', strings.get(0), 'You have not been enlightened by List Koan 4 in About Lists');
    	System.assertEquals('third', strings.get(0), 'You have not been enlightened by List Koan 4 in About Lists');
    	
    	//We can also clear the list
    	strings.clear();
    	
    	//And assert on the contents of the list
    	System.assertEquals(strings.isEmpty(), false, 'You have not been enlightened by List Koan 4 in About Lists');
    }
    
    //Lists can also be added to other lists to make them grow
    static testMethod void ListKoan5()
    {
    	//Create a couple of lists
    	List<String> firstList = new List<String>{'first','second','third'};
    	List<String> secondList = new List<String>{'a','b','c','d'};
    	
    	//Lets just check the sizes
    	System.assertEquals(firstList.size(), toBeReplaced, 'You have not been enlightened by List Koan 5 in About Lists');
    	System.assertEquals(secondList.size(), toBeReplaced, 'You have not been enlightened by List Koan 5 in About Lists');
    	
    	//We can call the addAll method to add the second List to the first
    	firstList.addAll(secondList);
    	
    	//Now check the sizes
    	System.assertEquals(firstList.size(), toBeReplaced, 'You have not been enlightened by List Koan 5 in About Lists');
    	System.assertEquals(secondList.size(), toBeReplaced, 'You have not been enlightened by List Koan 5 in About Lists');
    	
    	//And we can also check that the list members are definitely there
    	System.assertEquals('b', firstList.get(0), 'You have not been enlightened by List Koan 5 in About Lists');
    }
}