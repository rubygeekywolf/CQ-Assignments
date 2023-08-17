﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeApplication.Model
{
    public class Department
    {
        public int Id { get; set; }
        public string Name { get; set; }=string.Empty;
        public int LocationId { get; set; }
        public Location? Location { get; set; }
    }
}
