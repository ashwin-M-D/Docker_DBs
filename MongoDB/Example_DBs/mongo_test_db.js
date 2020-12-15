use testdb;
db.dropDatabase();
use testdb;
db.employees.insertMany([
{
 "name": "Hussein",
 "eId": 1335, 
 "title" : "Engineer"
},
{
 "name": "Ali",
 "eId": 1334, 
 "title" : "Engineer"
},
{
 "name": "Sam",
 "eId": 1331, 
 "title" : "Developer"
},
{
 "name": "Nasser",
 "eId": 1340, 
 "title" : "Manager"
}
]
);
