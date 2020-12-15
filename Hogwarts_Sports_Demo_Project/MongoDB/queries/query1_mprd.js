// get each sport and the total revinue it generated through tournaments

use uni_sports_platform

var mapFunction1 = function() {
    emit(this.Sport, this.Price)
}

var reduceFunction1 = function(Sport, Price) {
    return(Array.sum(Price))
}

db.tournament_registration.mapReduce(
    mapFunction1,
    reduceFunction1,
    { out: "tourn_rev" }
)

var r = db.tourn_rev.find()
r.forEach(printjson)
