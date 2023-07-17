﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp6
{
    public class Employee
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime DateOfJoin { get; set; }
        public string Department { get; set; }
        public double Salary { get; set; }
        public char JobType { get; set; }
        public Employee(int id,string name,DateTime dj, string dept,double sal,char jt)
        {
            Id = id;
            Name = name;
            DateOfJoin = dj;
            Department = dept;
            Salary = sal;
            JobType = jt;
        }
    }
}
