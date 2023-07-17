﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ShapeApp
{
    public class Triangle:Shape
    {
        public int Base { get; set; }
        public int Height { get; set;}
        public Triangle(int num,int b,int height):base(num)
        {
            NoOfSides = num;
            Base = b; 
            Height = height; 
        }
        public override double CalculateArea()
        {
            return (Base*Height)/2;
        }
    }
}
