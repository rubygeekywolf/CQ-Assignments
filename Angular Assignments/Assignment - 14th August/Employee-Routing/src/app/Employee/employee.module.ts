import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { EmployeeListComponent } from './employee-list/employee-list.component';
import { EmployeeDetailComponent } from './employee-detail/employee-detail.component';



@NgModule({
  declarations: [EmployeeListComponent,EmployeeDetailComponent],
  imports: [
    CommonModule
  ],
  exports: [EmployeeListComponent,EmployeeDetailComponent]
})
export class EmployeeModule { }
