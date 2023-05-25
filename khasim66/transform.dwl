%dw 2.0
output application/json
//Here I am printing the first letters from an Array in country field 
---
{
 EmpSalary: payload.EmpSalary,
 EmpName: payload.EmpName,
 TypeofEmploye: payload.TypeofEmploye,
 /*
 here i used map function to print the first letter from country field and joinby function to convert Array to string
 */
 Country: payload.Country map $[0] joinBy  ''
}