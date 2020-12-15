// get each Instructor and the total revinue he generated through classes

use uni_sports_platform

var mapFunction2 = function() {
    emit(this.I_Name, this.Class_Cost)
}

var reduceFunction2 = function(I_Name, Class_Cost) {
    return(Array.sum(Class_Cost))
}

db.class.mapReduce(
    mapFunction2,
    reduceFunction2,
    { out: "rev_inst" }
)

var r = db.rev_inst.find()
r.forEach(printjson)
