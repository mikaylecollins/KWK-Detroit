//class Scholar {
//
//    var age = 0
//    var name = " "
//    var studying = "Swift"
////properties of class will go here
//    //all this above is also like a variable where they give you values
//    init(scholarName : String, scholarAge : Int) {
//        name = scholarName
//        age = scholarAge
//    }
//func writeCode() {
//print("\(name) is \(age) and is a coder")
//    }
//}
//var newScholar = Scholar(scholarName : "Kayle", scholarAge : 17)
////This about was like us giving a variable like in math by saying that scholar name was kayle, and age was 17
////newScholar is an object created from the Scholar class
//
//
//print(newScholar.age)
//print(newScholar.name)
//print(newScholar.studying)
////
//////we can create actions using functions and classes. only objects created from the class can access the action created within
//
//
//
//
//
////var newScholar = Scholar(scholarName : "Kayle", scholarAge : 17)
//
//newScholar.writeCode()


class Dinosaur {

var age = 0
var breed = ""
var color = "lavender"

init(dinosaurBreed : String,dinosaurAge : Int){
    breed = dinosaurBreed
    age = dinosaurAge
}
    func eatFood(){
        print("The \(color) \(breed) is \(age) and likes to eat food")
    }
}
var newDinosaur = Dinosaur(dinosaurBreed : "T-Rex", dinosaurAge : 5)
newDinosaur.eatFood()
