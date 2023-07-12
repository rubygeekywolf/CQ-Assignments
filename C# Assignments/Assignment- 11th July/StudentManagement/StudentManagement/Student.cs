﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentManagement
{
    public class Student
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Mark { get; set; }
        public char Grade { 
            get
            {
                if (Mark >= 90)
                    return 'A';
                else if (Mark >= 80 && Mark < 90)
                    return 'B';
                else if (Mark >= 70 && Mark < 80)
                    return 'C';
                else if (Mark < 70)
                    return 'D';
                return 'F';
            }
                 }

        public Student(int id,string name,int mark)
        {
            Id = id;
            Name = name;
            Mark = mark;
        }
        public void display()
        {
            Console.WriteLine("Student Details:");
            Console.WriteLine("ID : " + Id);
            Console.WriteLine("Name : " + Name);
            Console.WriteLine("Mark : " + Mark);
            Console.WriteLine("Grade : " + Grade);
        }
    }
}
