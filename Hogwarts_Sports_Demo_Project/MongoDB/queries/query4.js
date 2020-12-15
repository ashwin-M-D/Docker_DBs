// Outputs all users and their HOGID based on their type

use uni_sports_platform

var r = db.users.aggregate([
                { $group: { _id: "$Type", value1: { $push: "$Name" }, value2: { $push: "$HOGID" } } }
        ])
                
r.forEach(printjson)