namespace Employee.master;

using { Employee.master as emp } from '../db/Schema';

service EmployeeService {
    @odata.draft.enabled
    entity Employees as projection on emp.Personal;
   // @odata.draft.enabled
    entity Address as projection on emp.Address;
  // @data.draft.enabled
    entity Contacts as projection on emp.Contacts;
}



