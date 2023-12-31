import { Component } from '@angular/core';
import { FormBuilder, FormGroup, FormControl } from '@angular/forms';
import { Router, ActivatedRoute } from '@angular/router';
import { IEmployeeDetail } from 'src/app/emp-home/IEmployeeDetail';
import { EmpService } from 'src/app/emp-home/emp.service';
import { EmployeeHttpService } from '../employee-http.service';

@Component({
  selector: 'app-emp-add',
  templateUrl: './emp-add.component.html',
  styleUrls: ['./emp-add.component.sass']
})
export class EmpAddComponent {
  public emp: Array<IEmployeeDetail> = []
  public newEmp:IEmployeeDetail={
    id:0,
    firstName : "",
    lastName : "",
    dateOfBirth : "",
    age : 0,
    dateOfJoining : "",
    country : ""
  }
  constructor(private empService: EmployeeHttpService, private router: Router,
    private activatedRoute: ActivatedRoute, private formBuilder: FormBuilder) {

  }
  empFG=new FormGroup({
    id:new FormControl(''),
    firstname: new FormControl(''),
    lastname : new FormControl(''),
    dateofbirth: new FormControl(''),
    age: new FormControl(''),
    joiningdate: new FormControl(''),
    country: new FormControl('')}
  );
  onSubmit()
  {
    const val=this.empFG.value;
    const tempEmp:IEmployeeDetail={
      id:Number(val.id),
      firstName:val.firstname||'',
      lastName:val.lastname||'',
      dateOfBirth:val.dateofbirth||'',
      age:Number(val.age)||0,
      dateOfJoining:val.joiningdate||'',
      country:val.country||''

    } 
    this.newEmp.firstName=tempEmp.firstName;
    this.newEmp.lastName=tempEmp.lastName;
    this.newEmp.dateOfBirth=tempEmp.dateOfBirth;
    this.newEmp.age=tempEmp.age;
    this.newEmp.dateOfJoining=tempEmp.dateOfJoining;
    this.newEmp.country=tempEmp.country;
    this.empService.addEmployee(this.newEmp).subscribe(data=>{console.log(data)})
    alert('Data entered')
  }
  change()
  {
    this.router.navigate(['./employee']);
  }
}
