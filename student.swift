import Foundation

/*we have number of students and we need to enter their names and grades

everytime after entering ask the user if they want to enter more

show the user a menu with these options

0 to stop

1 search student by name

2 print all students who pass

3 print name and grade of student with max grade

4 find the success rate

show the menu again untill 0

 */

func studententer(names:inout[String],grades:inout[Double])
{
        print("Enter name")

        names.append(readLine()!)

        print("Enter grade")

        grades.append(Double(readLine()!)!)
}

func options()
{
    print("1.Search student\n2.Print all students who pass\n3.Print name and grade of student with max grade\n4.Find success rate\n0.Exit")
}

func search(names:[String],grades:[Double],search:String)
{
    for i in 0..<names.count
    {
        if search==names[i]
        {
            print("Student name is \(names[i]) grade is \(grades[i])")
        }
    }
}

func pass(names:[String],grades:[Double],task: Int)->Double
{
    var count = 0
    var rate: Double = 0
    for i in 0..<grades.count
    {
    if grades[i]>50
    {
        if task==1
    {
            print(names[i])
    }
        else if task==2
    {
        count+=1
        rate = Double(count*100/grades.count)
    }
    }

    }
    return rate
}

func maxgrade(names: [String],grades: [Double])
{
    var max = 0.0
    var name1 = "a"
    for i in 0..<names.count
    {
        if max<grades[i]
        {
            max=grades[i]

            name1=names[i]
        }

    }
    print("Maximum grade student name is \(name1) and grade is \(max)")
}

var name:[String] = []

var grade:[Double] = []

var n = 1

while(n==1)
{
    print("Do you want to enter y/n")

    if (readLine()!)=="y"
    {
        studententer(names: &name, grades: &grade)
    }
    else
    {
        break;
    }
}
repeat
{
    options()

    print("Enter choice")

    switch Int(readLine()!)!
    {
    case 0: n=0

    print("Exiting the system")

        break

    case 1: print("Enter name")

    search(names: name,grades: grade,search: readLine()!)

        break

    case 2: print("Students who passed are")

            pass(names:name,grades:grade,task:1)

        break

    case 3: maxgrade(names: name,grades: grade)

        break

    case 4: print("Success rate is \(pass(names:name,grades:grade,task:2))")

        break

    default:print("Wrong option")

    }

}while(n==1);
