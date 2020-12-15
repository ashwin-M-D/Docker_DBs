// calculates all team members of all existing teams

use uni_sports_platform

var r = db.plays_for.aggregate([
                { $group: { _id: "$Team_Name", value: { $addToSet: "$P_Name" } } }
        ])
                
r.forEach(printjson)