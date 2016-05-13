LL are lists of many nodes, each referencing the one after it.
Types of values stored in the list shouldn't affect the implementation of the thing.

What are some implementations of linked lists? Does any programming language use them as they are?

The first node that's ever instantiated isn't pointed to by any other node instance.

Could I use a class method for the node's pointer?
I need the pointer for item 45 to point to item 46. It stands to reason that it's a property that belongs to all instances of a class, and is created for the instance when it's instantiated.

ADDED - lol, no. Directions specify that the linking is done when you call the class. Which makes sense, otherwise you couldn't make the lists dynamic.