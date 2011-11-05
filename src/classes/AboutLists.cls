/*
// This koan will focus on Lists and the methods provided to a List object.
*/
@isTest
private class AboutLists {

	static Integer toBeReplaced = 100;
	static String toBeReplacedStr = 'test';

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
    
    //If you have a set as well, that can be added to a List
    static testMethod void ListKoan6()
    {
    	//We have a list
    	List<String> firstList = new List<String>{'first','second','third'};
    	//And also we have a set
    	Set<String> ourSet = new Set<String>{'a','b','c'};
    	
    	//If we now call the addAll method on our list passing in our set
    	firstList.addAll(ourSet);
    	
    	//Then what size will our new list have
    	System.assertEquals(firstList.size(), toBeReplaced, 'You have not been enlightened by List Koan 6 in About Lists');
    }
    
    //We can set specific values in our list
    static testMethod void ListKoan7()
    {
    	//Define a list for us to use
    	List<String> firstList = new List<String>{'a','b','c','d'};
    	
    	//If we get the item at position 2, we expect to retrieve 'c'
    	System.assertEquals('c', firstList.get(2));
    	
    	//We can set this to a different value however
    	firstList.set(2, 'testValue');
    	
    	//And should get what now?
    	System.assertEquals(firstList.get(2), toBeReplacedStr, 'You have not been enlightened by List Koan 7 in About Lists');
    }
    
    //We can remove members from a list
    static testMethod void ListKoan8()
    {
    	//Define a list for us to use
    	List<String> firstList = new List<String>{'a','b','c','d'};
    	
    	//This list we can see has 4 elements
    	System.assertEquals(firstList.size(), 4);
    	
    	//Let us remove the element at position 2
    	firstList.remove(2);
    		
    	//This will change the size of the list and the element now at position 2
    	System.assertEquals(firstList.get(2), toBeReplacedStr, 'You have not been enlightened by List Koan 8 in About Lists');
    	System.assertEquals(firstList.size(), toBeReplaced, 'You have not been enlightened by List Koan 8 in About Lists');
    }
    
    //The final thing we are goign to see is how we can put lists in an order
    static testMethod void ListKoan9()
    {
    	//Define a list for us to use
    	List<String> firstList = new List<String>{'d','a','e','b','c'};
    	
    	//Now sort the list
    	firstList.sort();
    	
    	//What should be the string concatenating the items below?
    	System.assertEquals(firstList[0]+firstList[1]+firstList[2]+firstList[3]+firstList[4], toBeReplacedStr, 'You have not been enlightened by List Koan 8 in About Lists');
    }
}