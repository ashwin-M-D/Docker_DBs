// get each Instructor and the total revinue he generated through classes

use uni_sports_platform

var r = db.class.aggregate([
                { $group: { _id: "$I_Name", value: { $sum: "$Class_Cost"} } }
        ])

r.forEach(printjson)