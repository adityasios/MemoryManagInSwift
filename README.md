https://www.appcoda.com/memory-management-swift/

Strong vs Weak vs Unowned – Quick Facts
1.Usually, when a property is being created, the reference is strong unless they are declared weak or unowned.
2.With the property labelled as weak, it will not increment the reference count
3.An unowned reference falls in between, they are neither strong nor or type optional. Compiler will assume that object is not deallocated as the reference itself remain allocated.







iBooks. https://itunes.apple.com/in/book/the-swift-programming-language-swift-4-2/id881256329?mt=11
Automatic Reference Counting - ARC 


INTRO
Swift uses Automatic Reference Counting (ARC) to track and manage your app’s memory usage.
In most cases, this means that memory management “just works” in Swift, and you do not need to think about memory management yourself. 
ARC automatically frees up the memory used by class instances when those instances are no longer needed.
However, in a few cases ARC requires more information about the relationships between parts of your code in order to manage memory for you.
Reference counting applies only to instances of classes. 
Structures and enumerations are value types, not reference types, and are not stored and passed by reference.






How ARC Works
Every time you create a new instance of a class, ARC allocates a chunk of memory to store information about that instance. 
This memory holds information about the type of the instance, together with the values of any stored properties associated with that instance.
Additionally, when an instance is no longer needed, ARC frees up the memory used by that instance so that the memory can be used for other purposes instead. This ensures that class instances do not take up space in memory when they are no longer needed.



Strong Reference Cycles Between Class Instances
strong reference cycle -  if two class instances hold a strong reference to each other, such that each instance keeps the other alive.



