import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EmpSearchComponent } from './emp-search.component';

describe('EmpSearchComponent', () => {
  let component: EmpSearchComponent;
  let fixture: ComponentFixture<EmpSearchComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [EmpSearchComponent]
    });
    fixture = TestBed.createComponent(EmpSearchComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
