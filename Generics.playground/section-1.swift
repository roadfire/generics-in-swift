// Playing with Generics in Swift

// Let's make a function that prints each character in a String. How does this look?

func printEachCharacter(string: String)
{
    for character in string
    {
        println(character)
    }
}

// Now we should see each character printed to the console...

let str = "Hello"
printEachCharacter(str)


// But what if we want to print each element in an Array? How do we do that? We might try this (uncomment to play):

/*
func printEachElementInArray(arr: AnyObject[])
{
    for element: AnyObject in arr
    {
        println(element)
    }
}

// But does that work?

let people = ["Sally", "Jim"]
printEachElementInArray(people)
*/

// Nope - the compiler doesn't like the line above. You should see "Cannot convert the expression's type '{}' to type 'AnyObject[]'"

// (You might want to delete or comment out the broken code above.)


// Hmm...


// ...


// ...maybe we need to use generics?

func printEachElement<T>(array: T[])
{
    for element in array
    {
        println(element)
    }
}

// How does that look?

let friends = ["Sally", "Jim"]
printEachElement(friends)

// But more importantly, how does it work? What does it mean?

// The <T> after the method name indicates that this is a generic function. For its only parameter, it takes an Array whose objects are of type T - and T can be any type. So it's an array containing any kind of objects.


// Now...what if we want a function that prints each element of either a String *or* an Array? Shall we try this?

func printEach<T: Sequence>(sequence: T)
{
    for thing in sequence
    {
        println(thing)
    }
}

// What do you think? Is this going to work?

let name = "Josh"
printEach(name)

let veggies = ["cucumber", "carrot"]
printEach(veggies)

// (Of course it works - why else would it be here, right?) But does the code make sense?

// So again, we have a generic function that takes a parameter that's of type T. And T is a Sequence (something we can iterate over), as indicated by the <T: Sequence> just after the method name. Make sense?

// You can read all of this here:
// http://roadfiresoftware.com/blog

// P.S. If you want to learn more Swift, you can get lessons like this every week on my newsletter:
// http://eepurl.com/FSeIT