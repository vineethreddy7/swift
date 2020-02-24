//
//  student.swift
//  swift1
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class student
{
    var id: Int
    var name: String
    var dob: String
    var average: Double
    
    //constructor
    init(id: Int,name: String, dob: String, average: Double)
    {
        self.id = id
        self.name = name
        self.dob = dob
        self.average = average
    }
}


//
//  graduate_student.swift
//  swift1
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class graduate_student: student
{
    var project_grade: Double
    
    //constructor
    init(id: Int, name: String, dob: String, average: Double, project_grade: Double)
    {
        self.project_grade = project_grade
        super.init(id: id, name: name, dob: dob, average: average)
    }
}


//
//  main.swift
//  swift1
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

//create class student with attributes id, name, dob, average

//sub class graduate_student with same attributes and project grade

//in the main create array of students to have some of the students and graduate students

//let the user give the array size and fill the array from the user


print("Enter number of students")

let n = Int(readLine()!)!

var students: [student] = []

for _ in 0..<n
{
    print("1 for student \n2 for graduate student")
    let c = Int(readLine()!)!
    print("Enter student id")
    let id = Int(readLine()!)!
    print("Enter student name")
    let name = readLine()!
    print("Enter student dob")
    let dob = readLine()!
    print("Enter student average")
    let average = Double(readLine()!)!
    
    if c==1
    {
        students.append(student(id: id,name: name,dob: dob,average: average))
    }
    else
    {
        print("Enter student project grade")
        let pg = Double(readLine()!)!
        students.append(graduate_student(id: id, name: name, dob: dob, average: average, project_grade: pg))
    }
}

print(students[0])
