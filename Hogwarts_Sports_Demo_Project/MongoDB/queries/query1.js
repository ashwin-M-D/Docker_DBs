// get each sport and the total revinue it generated through tournaments

use uni_sports_platform

var r = db.tournament_registration.aggregate([
                { $group: { _id: "$Sport", value: { $sum: "$Price"} } }
        ])
                
r.forEach(printjson)