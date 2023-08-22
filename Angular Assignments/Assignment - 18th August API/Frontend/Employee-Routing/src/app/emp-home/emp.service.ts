import { Injectable } from '@angular/core';
import { IEmployeeDetail } from './IEmployeeDetail';

@Injectable({
  providedIn: 'root'
})
export class EmpService {
  public employees:Array<IEmployeeDetail>=[
    {
      id:1,
      firstName:"Ruby",
      lastName:"Abraham",
      dateOfBirth:new Date("2001-07-13") ,
      age:22,
      dateOfJoining:new Date("2023-07-01"),
      country:"India",
    },
    {
      id:2,
      firstName:"Reenu",
      lastName:"Abraham",
      dateOfBirth:new Date("2001-12-12") ,
      age:21,
      dateOfJoining:new Date("2023-07-01"),
      country:"India",
    },
    {
      id:3,
      firstName:"Reshma",
      lastName:"Johnson",
      dateOfBirth:new Date("2001-01-01") ,
      age:22,
      dateOfJoining:new Date("2023-07-01"),
      country:"India",
    },
    {
      id:4,
      firstName:"Arun",
      lastName:"Sabu",
      dateOfBirth:new Date("2001-11-21") ,
      age:21,
      dateOfJoining:new Date("2023-07-01"),
      country:"India",
    },
    {
      id:5,
      firstName:"Varghese",
      lastName:"Abraham",
      dateOfBirth:new Date("2000-07-07") ,
      age:23,
      dateOfJoining:new Date("2023-07-01"),
      country:"India",
    }
  ];

  constructor() { }
}
