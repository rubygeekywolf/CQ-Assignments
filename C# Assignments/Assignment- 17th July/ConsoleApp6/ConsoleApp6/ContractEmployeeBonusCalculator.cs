﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp6
{
    public class ContractEmployeeBonusCalculator : IBonusCalculator
    {
        public double CalculateBonus(Employee employee)
        {
            return (employee.Salary * 15) / 100;
        }
    }
}
