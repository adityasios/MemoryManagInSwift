https://www.appcoda.com/memory-management-swift/

Strong vs Weak vs Unowned – Quick Facts
1.Usually, when a property is being created, the reference is strong unless they are declared weak or unowned.
2.With the property labelled as weak, it will not increment the reference count
3.An unowned reference falls in between, they are neither strong nor or type optional. Compiler will assume that object is not deallocated as the reference itself remain allocated.
