using company.overview as company from '../db/schema';

service TeamsService {
    entity Departaments as projection on company.Departaments
    entity Employees as projection on company.Employees
    entity Roles as projection on company.Roles
}