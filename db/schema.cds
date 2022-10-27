namespace company.overview;

using {cuid, managed} from '@sap/cds/common';




entity Departaments:  managed {
    key name: String;
    numOfEmployees: Integer;
    employees: Association to many Employees on employees.departament =$self;
    employeesSalary: Decimal(9,2);
    otherCosts: Decimal(9,2);
}

entity Employees: cuid, managed {
    firstName: String;
    lastName: String;
    departament: Association to Departaments;
    role: Association to Roles;
    salary: Decimal(9,2);
}

entity Roles: managed {
    key name: String;
    departament: Association to Departaments
}

entity Costs: cuid, managed {
    name: String;
    departament: Association to Departaments;
    budget: Decimal(9,2)
}