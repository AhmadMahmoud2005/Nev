// first example
class animal {
    str? sound = null
    func talk() => cmd.print("...")
}
class cat : animal {
    init() => sound = "miao"
    override func talk() => cmd.print("hi {sound!} im cat {sound!} {sound!}!!!")
}

func main() {
    let animals = animal[]
    let dog = animal()
    dog.talk()
    let cute = cat()
    cute.talk()
    /*
    output:
    ...
    hi miao im cat miao miao!!!
    */
}

// second example
class Person {
    str name
    init(str _name) => name = _name
    func introduceSelf() {
        cmd.print("Hi! \n I'm just a normal person called +{name}.")
    }
}
class Professor : Person {
    str[] teaches = new[]
    init(str _name, str _teaches) => name, teaches = _name, _teaches
    override func introduceSelf() {
        cmd.print("Hi everyone! \n I'm +{name} just tries to explain my subject to my student i hobe to help everyone. \n")
    }
    func setGrade(ref Student _student, u8 _grade) {
        _student.grade = _grade
    }
}
class Student : Person {
    u8 year
    u8 grade
    init(str _name, str _year) => name, year = _name, _year
    override func introduceSelf() {
        cmd.print("Hi! \n I'm +{name} in +{year} class. \n i want to be in a good place a day in the feature to help others. \n")
    }
}

func main() {
    Person dad = Person("Alex")
    let student = Student("tom", 3)
    
}