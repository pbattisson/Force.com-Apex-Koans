/*
// The focus of this set of koans is the use of sets, one of the most useful Apex primitives.
*/

@isTest
private class AboutMaps 
{
	static Integer toBeReplaced = 100;
	static String toBeReplacedStr = 'You should replace this varibale with the expected value';
	
	//A map is a series of key value pairs
	static testMethod void MapKoan1()
	{
		//We define a new set in the same way we define any new primitive, by instantiating an instance of its class.
		//Like Lists and strings we must define the type of data it will be holding, in this instance, for both the key and the value. 
		//Below is a map between an integer and a string. The integer is the key and the string is the value.
		Map<Integer, String> testMap = new Map<Integer, String>();
		
		//As ever though, I would imagine it is empty??
		System.assert(testMap.isEmpty(), 'You have yet to be enlightened by Koan 1 in About Maps');
	}
	
	//So we have discovered how to create a new empty map, and learnt that it has an isEmpty method in the
	//process. Similarly it has a size method we can use to check it long hand
	static testMethod void MapKoan2()
	{
		//Create a new map of Integer:String again
		Map<Integer, String> testMap = new Map<Integer, String>();
		
		//Now for this we can probably guess what the size should be
		System.assertEquals(testMap.size(), toBeReplaced, 'You have yet to be enlightened by Koan 2 in About Maps');
	} 
	
	//Okay, empty maps are not very exciting (nothing empty ever is really) so lets add some items
	static testMethod void MapKoan3()
	{
		//Create a new map of Integer:String again
		Map<Integer, String> testMap = new Map<Integer, String>();
		
		//We add values using the 'put' command
		testMap.put(123, 'Oh look, a string!');
		
		//We retrieve the values by passing the desired key into the 'get' method. So what should we get back here in these situations
		System.assertEquals(testMap.get(123), toBeReplacedStr, 'You have yet to be enlightened by Koan 3 (I) in About Maps');
		System.assertEquals(testMap.get(456), toBeReplacedStr, 'You have yet to be enlightened by Koan 3 (II) in About Maps');
	}
	
	
	//So we have managed to create a Map, see if it is empty in a couple of different ways and then put some data in it.
	//We have then retrieved this using the get method. Lets now learn about some of the methods that are available on maps for us to use.
	static testMethod void MapKoan4()
	{
		//Lets us create a map and put a value into it
		Map<Integer, String> testMap = new Map<Integer, String>();
		testMap.put(123, 'Our first value');
		
		//We can us the containsKey() method to see if our map contains a particular key. Are these assertions correct? What should they be and why?
		System.assertEquals(testMap.containsKey(123), false, 'You have yet to be enlightened by Koan 4 (I) in About Maps');
		System.assertEquals(testMap.containsKey(321), false, 'You have yet to be enlightened by Koan 4 (II) in About Maps');
	}
	
	//This is a good way of us checking whether a particular item is being used in our current context or has been updated. They are extremely
	//useful in triggers to help us maintain knowledge of what has been acted upon. We can also retrieve some collections of information from our maps.
	static testMethod void MapKoan5()
	{
		//Create a map containing some data
		Map<Integer, String> testMap = new Map<Integer, String>();
		testMap.put(123, 'Our first value');
		testMap.put(234, 'Our second value');
		testMap.put(345, 'Our third value');
		
		//We can retrieve a set of all the keys from the map
		Set<Integer> testKeys = testMap.keySet();
		
		//And on that we can use all of our familiar set methods from About Sets
		System.assertEquals(testKeys.size(), toBeReplaced, 'You have yet to be enlightened by Koan 5 (I) in About Maps');
		System.assertEquals(testKeys.contains(123), false, 'You have yet to be enlightened by Koan 5 (II) in About Maps');
		System.assertEquals(testKeys.contains(234), false, 'You have yet to be enlightened by Koan 5 (III) in About Maps');
		System.assertEquals(testKeys.contains(153), false, 'You have yet to be enlightened by Koan 5 (IV) in About Maps');
	}
}