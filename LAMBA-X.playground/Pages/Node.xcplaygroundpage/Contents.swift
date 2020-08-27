//: [Previous](@previous)

import Foundation


//Create a class and name it ​MyNode​. This class will represent a node from the diagram above. This class should have 2 public properties.
class MyNode {
    
    var name: Int
    var children: [MyNode]
    
    init(name: Int, children: [MyNode]){
        self.name = name
        self.children = children
    }
    
}

func findNodes(_ myNode: MyNode) -> [Int] {
    
    // create storage to hold return array
    var returnValue: [Int] = []
    
    // What do I want to do with myNode?
       // I want to find its children

    //How would i access myNode's children? For ex: myNode = 3
        // Check if myNode has more than 0 children, 1-2
    if myNode.children > 0 {
        //if myNodes children value is greater than 0
        // then iterate through the children array
          //children array could have one
    for i in myNode.children {
        returnValue.append(i) //if myNode(3) has 2 children this will be i = 1,6
                              // but this only gets us access to the first level
                              // we then need to access the childrens children  (1 & 6)
      }
    } else if myNode.children == 0 {
        return
    }
    
    
    return returnValue
    
}


//: [Next](@next)
