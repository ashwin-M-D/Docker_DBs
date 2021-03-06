use wine_db
db.dropDatabase()
use wine_db
db.order_lines.insertMany([
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14acc"),
	"product_order" : 1511,
	"product" : 212,
	"quantity" : 2
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14acd"),
	"product_order" : 1511,
	"product" : 345,
	"quantity" : 4
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ace"),
	"product_order" : 1511,
	"product" : 783,
	"quantity" : 1
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14acf"),
	"product_order" : 1511,
	"product" : 856,
	"quantity" : 9
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ad0"),
	"product_order" : 1512,
	"product" : 178,
	"quantity" : 3
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ad1"),
	"product_order" : 1512,
	"product" : 639,
	"quantity" : 13
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ad2"),
	"product_order" : 1512,
	"product" : 885,
	"quantity" : 3
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ad3"),
	"product_order" : 1512,
	"product" : 977,
	"quantity" : 10
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ad4"),
	"product_order" : 1513,
	"product" : 295,
	"quantity" : 9
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ad5"),
	"product_order" : 1513,
	"product" : 668,
	"quantity" : 7
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ad6"),
	"product_order" : 1514,
	"product" : 185,
	"quantity" : 2
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ad7"),
	"product_order" : 1514,
	"product" : 306,
	"quantity" : 9
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ad8"),
	"product_order" : 1514,
	"product" : 847,
	"quantity" : 9
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ad9"),
	"product_order" : 1514,
	"product" : 900,
	"quantity" : 2
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ada"),
	"product_order" : 1523,
	"product" : 347,
	"quantity" : 1
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14adb"),
	"product_order" : 1523,
	"product" : 783,
	"quantity" : 2
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14adc"),
	"product_order" : 1523,
	"product" : 900,
	"quantity" : 3
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14add"),
	"product_order" : 1523,
	"product" : 915,
	"quantity" : 13
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ade"),
	"product_order" : 1523,
	"product" : 977,
	"quantity" : 1
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14adf"),
	"product_order" : 1537,
	"product" : 386,
	"quantity" : 8
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ae0"),
	"product_order" : 1537,
	"product" : 632,
	"quantity" : 2
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ae1"),
	"product_order" : 1537,
	"product" : 657,
	"quantity" : 7
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ae2"),
	"product_order" : 1537,
	"product" : 766,
	"quantity" : 2
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ae3"),
	"product_order" : 1538,
	"product" : 178,
	"quantity" : 6
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ae4"),
	"product_order" : 1538,
	"product" : 212,
	"quantity" : 15
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ae5"),
	"product_order" : 1560,
	"product" : 766,
	"quantity" : 1
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ae6"),
	"product_order" : 1560,
	"product" : 795,
	"quantity" : 3
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ae7"),
	"product_order" : 1560,
	"product" : 900,
	"quantity" : 9
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ae8"),
	"product_order" : 1577,
	"product" : 212,
	"quantity" : 6
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14ae9"),
	"product_order" : 1577,
	"product" : 668,
	"quantity" : 9
},
{
	"_id" : ObjectId("5fc7f50dec4e8bf2c3d14aea"),
	"product_order" : 1594,
	"product" : 306,
	"quantity" : 2
}
])
db.products.insertMany([
{
	"_id" : 119,
	"name" : "Chateau Miraval, Cotes de Provence Rose, 2015",
	"type" : "rose",
	"available_quantity" : 126
},
{
	"_id" : 154,
	"name" : "Chateau Haut Brion, 2008",
	"type" : "red",
	"available_quantity" : 111
},
{
	"_id" : 178,
	"name" : "Meerdael, Methode Traditionnelle Chardonnay, 2014",
	"type" : "sparkling",
	"available_quantity" : 136
},
{
	"_id" : 185,
	"name" : "Chateau Petrus, 1975",
	"type" : "red",
	"available_quantity" : 5
},
{
	"_id" : 199,
	"name" : "Jacques Selosse, Brut Initial, 2012",
	"type" : "sparkling",
	"available_quantity" : 96
},
{
	"_id" : 212,
	"name" : "Billecart-Salmon, Brut Rserve, 2014",
	"type" : "sparkling",
	"available_quantity" : 141
},
{
	"_id" : 219,
	"name" : "Marques de Caceres, Rioja Crianza, 2010 ",
	"type" : "red",
	"available_quantity" : 0
},
{
	"_id" : 238,
	"name" : "Cos d'Estournel, Saint - Estephe, 2006",
	"type" : "red",
	"available_quantity" : 50
},
{
	"_id" : 265,
	"name" : "Chateau Sociando-Mallet, Haut-Medoc, 1998",
	"type" : "red",
	"available_quantity" : 17
},
{
	"_id" : 289,
	"name" : "Chateau Saint Estve de Neri, 2015",
	"type" : "rose",
	"available_quantity" : 126
},
{
	"_id" : 295,
	"name" : "Chateau Pape Clement, Pessac-Lognan, 2001",
	"type" : "red",
	"available_quantity" : 75
},
{
	"_id" : 300,
	"name" : "Chateau des Rontets, Chardonnay, Birbettes",
	"type" : "white",
	"available_quantity" : 64
},
{
	"_id" : 306,
	"name" : "Chateau Coupe Roses, Granaxa, 2011",
	"type" : "red",
	"available_quantity" : 57
},
{
	"_id" : 327,
	"name" : "Chateau La Croix Saint-Michel, 2011",
	"type" : "red",
	"available_quantity" : 87
},
{
	"_id" : 331,
	"name" : "Chateau La Commanderie, Lalande-de-Pomerol, 1998",
	"type" : "red",
	"available_quantity" : 3
},
{
	"_id" : 345,
	"name" : "Vascosassetti, Brunello di Montalcino, 2004",
	"type" : "red",
	"available_quantity" : 64
},
{
	"_id" : 347,
	"name" : "Chateau Corbin-Despagne, Saint-Emilion, 2005",
	"type" : "red",
	"available_quantity" : 145
},
{
	"_id" : 384,
	"name" : "Dominio de Pingus, Ribera del Duero, Tempranillo, 2006",
	"type" : "red",
	"available_quantity" : 38
},
{
	"_id" : 386,
	"name" : "Chateau Haut-Bailly, Pessac-Leognan, Grand Cru Classe, 1968",
	"type" : "red",
	"available_quantity" : 118
},
{
	"_id" : 404,
	"name" : "Chateau Haut-Cadet, Saint-Emilion, 1997",
	"type" : "red",
	"available_quantity" : 115
},
{
	"_id" : 468,
	"name" : "Domaine Trapet Pre & Fils, Gevrey-Chambertin, 2008",
	"type" : "red",
	"available_quantity" : 43
},
{
	"_id" : 474,
	"name" : "Chateau De La Tour, Clos-Vougeot, Grand cru, 2008",
	"type" : "red",
	"available_quantity" : 147
},
{
	"_id" : 494,
	"name" : "Veuve-Cliquot, Brut, 2012",
	"type" : "sparkling",
	"available_quantity" : 1
},
{
	"_id" : 523,
	"name" : "Chateau Andron Blanquet, Saint Estephe, 1979",
	"type" : "red",
	"available_quantity" : 13
},
{
	"_id" : 632,
	"name" : "Meneghetti, Chardonnay, 2010",
	"type" : "white",
	"available_quantity" : 83
},
{
	"_id" : 637,
	"name" : "Mot & Chandon, Ros, Imperial, 2014",
	"type" : "sparkling",
	"available_quantity" : 121
},
{
	"_id" : 639,
	"name" : "Chateau Mouton-Rotshild, Pauillac, 2007",
	"type" : "red",
	"available_quantity" : 35
},
{
	"_id" : 657,
	"name" : "Le Brun Servenay, Brut, 2008",
	"type" : "sparkling",
	"available_quantity" : 34
},
{
	"_id" : 668,
	"name" : "Gallo Family Vineyards, Grenache, 2014",
	"type" : "rose",
	"available_quantity" : 95
},
{
	"_id" : 760,
	"name" : "Chateau Talbot, Saint-Julien, Grand Cru Classe, 2002",
	"type" : "red",
	"available_quantity" : 92
},
{
	"_id" : 766,
	"name" : "GH Mum, Brut, 2012",
	"type" : "sparkling",
	"available_quantity" : 68
},
{
	"_id" : 783,
	"name" : "Clos D'Opleeuw, Chardonnay, 2012",
	"type" : "white",
	"available_quantity" : 8
},
{
	"_id" : 795,
	"name" : "Casa Silva, Los Lingues, Carmenere, 2012",
	"type" : "red",
	"available_quantity" : 105
},
{
	"_id" : 832,
	"name" : "Conde de Hervas,Rioja, 2004",
	"type" : "red",
	"available_quantity" : 121
},
{
	"_id" : 838,
	"name" : "Piper Heidseck, Brut, 2014",
	"type" : "sparkling",
	"available_quantity" : 108
},
{
	"_id" : 847,
	"name" : "Seresin, Merlot, 1999",
	"type" : "red",
	"available_quantity" : 41
},
{
	"_id" : 856,
	"name" : "Domaine Chandon de Briailles, Savigny-Les-Beaune, 2006",
	"type" : "red",
	"available_quantity" : 93
},
{
	"_id" : 885,
	"name" : "Chateau Margaux, Grand Cru Class, 1956",
	"type" : "red",
	"available_quantity" : 147
},
{
	"_id" : 899,
	"name" : "Trimbach, Riesling, 1989",
	"type" : "white",
	"available_quantity" : 142
},
{
	"_id" : 900,
	"name" : "Chateau Cheval Blanc, Saint Emilion, Grand Cru Class, 1972",
	"type" : "red",
	"available_quantity" : 45
},
{
	"_id" : 915,
	"name" : "Champagne Boizel, Brut, Rserve, 2010",
	"type" : "sparkling",
	"available_quantity" : 76
},
{
	"_id" : 977,
	"name" : "Chateau Batailley, Grand Cru Class, 1975",
	"type" : "red",
	"available_quantity" : 21
}
])
db.purchase_orders.insertMany([
{ "_id" : 1511, "date" : "2015-03-24", "supplier" : 37 },
{ "_id" : 1512, "date" : "2015-04-10", "supplier" : 94 },
{ "_id" : 1513, "date" : "2015-04-11", "supplier" : 37 },
{ "_id" : 1514, "date" : "2015-04-12", "supplier" : 32 },
{ "_id" : 1523, "date" : "2015-04-19", "supplier" : 37 },
{ "_id" : 1537, "date" : "2015-04-27", "supplier" : 69 },
{ "_id" : 1538, "date" : "2015-05-01", "supplier" : 68 },
{ "_id" : 1560, "date" : "2015-05-05", "supplier" : 32 }
])
db.suppliers.insertMany([
{
	"_id" : 21,
	"name" : "Deliwines",
	"address" : "240, Avenue of the Americas",
	"city" : "New York",
	"status" : 20
},
{
	"_id" : 32,
	"name" : "Best Wines",
	"address" : "660, Market Street",
	"city" : "San Francisco",
	"status" : 90
},
{
	"_id" : 37,
	"name" : "Ad Fundum",
	"address" : "82, Wacker Drive ",
	"city" : "Chicago",
	"status" : 95
},
{
	"_id" : 52,
	"name" : "Spirits & co.",
	"address" : "928, Strip",
	"city" : "Las Vegas",
	"status" : null
},
{
	"_id" : 68,
	"name" : "The Wine Depot",
	"address" : "132, Montgomery Street",
	"city" : "San Francisco",
	"status" : 10
},
{
	"_id" : 69,
	"name" : "Vinos del Mundo",
	"address" : "4, Collins Avenue",
	"city" : "Miami",
	"status" : 92
},
{
	"_id" : 84,
	"name" : "Wine Trade Logistics",
	"address" : "1002, Rhode Island Avenue",
	"city" : "Washington",
	"status" : 92
},
{
	"_id" : 94,
	"name" : "The Wine Crate",
	"address" : "330, McKinney Avenue ",
	"city" : "Dallas",
	"status" : 75
}
])
db.supplies.insertMany([
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c34"),
	"supplier" : 21,
	"product" : 119,
	"purchase_price" : 15.99,
	"delivery_period" : 1
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c35"),
	"supplier" : 21,
	"product" : 178,
	"purchase_price" : null,
	"delivery_period" : null
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c36"),
	"supplier" : 21,
	"product" : 289,
	"purchase_price" : 17.99,
	"delivery_period" : 1
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c37"),
	"supplier" : 21,
	"product" : 327,
	"purchase_price" : 56,
	"delivery_period" : 6
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c38"),
	"supplier" : 21,
	"product" : 347,
	"purchase_price" : 16,
	"delivery_period" : 2
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c39"),
	"supplier" : 21,
	"product" : 384,
	"purchase_price" : 55,
	"delivery_period" : 2
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c3a"),
	"supplier" : 21,
	"product" : 386,
	"purchase_price" : 58.99,
	"delivery_period" : 2
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c3b"),
	"supplier" : 21,
	"product" : 468,
	"purchase_price" : 14.99,
	"delivery_period" : 5
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c3c"),
	"supplier" : 21,
	"product" : 668,
	"purchase_price" : 6,
	"delivery_period" : 1
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c3d"),
	"supplier" : 32,
	"product" : 154,
	"purchase_price" : 21,
	"delivery_period" : 4
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c3e"),
	"supplier" : 32,
	"product" : 474,
	"purchase_price" : 40,
	"delivery_period" : 1
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c3f"),
	"supplier" : 32,
	"product" : 494,
	"purchase_price" : 15,
	"delivery_period" : 2
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c40"),
	"supplier" : 32,
	"product" : 657,
	"purchase_price" : 44.99,
	"delivery_period" : 4
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c41"),
	"supplier" : 32,
	"product" : 760,
	"purchase_price" : 52,
	"delivery_period" : 3
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c42"),
	"supplier" : 32,
	"product" : 832,
	"purchase_price" : 20,
	"delivery_period" : 2
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c43"),
	"supplier" : 37,
	"product" : 178,
	"purchase_price" : 16.99,
	"delivery_period" : 4
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c44"),
	"supplier" : 37,
	"product" : 185,
	"purchase_price" : 32.99,
	"delivery_period" : 3
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c45"),
	"supplier" : 37,
	"product" : 468,
	"purchase_price" : 14,
	"delivery_period" : 1
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c46"),
	"supplier" : 37,
	"product" : 795,
	"purchase_price" : 20.99,
	"delivery_period" : 3
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c47"),
	"supplier" : 68,
	"product" : 178,
	"purchase_price" : 17.99,
	"delivery_period" : 5
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c48"),
	"supplier" : 68,
	"product" : 212,
	"purchase_price" : 27.99,
	"delivery_period" : 6
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c49"),
	"supplier" : 68,
	"product" : 300,
	"purchase_price" : 19,
	"delivery_period" : 1
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c4a"),
	"supplier" : 68,
	"product" : 327,
	"purchase_price" : 56.99,
	"delivery_period" : 4
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c4b"),
	"supplier" : 68,
	"product" : 468,
	"purchase_price" : 15.99,
	"delivery_period" : 4
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c4c"),
	"supplier" : 68,
	"product" : 637,
	"purchase_price" : 81,
	"delivery_period" : 2
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c4d"),
	"supplier" : 68,
	"product" : 639,
	"purchase_price" : 5,
	"delivery_period" : 5
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c4e"),
	"supplier" : 68,
	"product" : 668,
	"purchase_price" : 6.99,
	"delivery_period" : 3
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c4f"),
	"supplier" : 68,
	"product" : 760,
	"purchase_price" : 52.99,
	"delivery_period" : 2
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c50"),
	"supplier" : 69,
	"product" : 178,
	"purchase_price" : 16.99,
	"delivery_period" : null
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c51"),
	"supplier" : 69,
	"product" : 199,
	"purchase_price" : 32,
	"delivery_period" : 4
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c52"),
	"supplier" : 69,
	"product" : 347,
	"purchase_price" : 18,
	"delivery_period" : 4
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c53"),
	"supplier" : 69,
	"product" : 783,
	"purchase_price" : 7,
	"delivery_period" : 3
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c54"),
	"supplier" : 69,
	"product" : 795,
	"purchase_price" : 20.99,
	"delivery_period" : 1
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c55"),
	"supplier" : 69,
	"product" : 832,
	"purchase_price" : 21,
	"delivery_period" : 4
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c56"),
	"supplier" : 69,
	"product" : 977,
	"purchase_price" : 34.99,
	"delivery_period" : 1
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c57"),
	"supplier" : 84,
	"product" : 185,
	"purchase_price" : 33,
	"delivery_period" : 5
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c58"),
	"supplier" : 84,
	"product" : 300,
	"purchase_price" : 21,
	"delivery_period" : 2
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c59"),
	"supplier" : 84,
	"product" : 306,
	"purchase_price" : 25,
	"delivery_period" : 2
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c5a"),
	"supplier" : 84,
	"product" : 347,
	"purchase_price" : 18,
	"delivery_period" : 4
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c5b"),
	"supplier" : 84,
	"product" : 468,
	"purchase_price" : 15,
	"delivery_period" : 2
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c5c"),
	"supplier" : 84,
	"product" : 494,
	"purchase_price" : 15.99,
	"delivery_period" : 2
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c5d"),
	"supplier" : 84,
	"product" : 832,
	"purchase_price" : 20.99,
	"delivery_period" : 6
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c5e"),
	"supplier" : 84,
	"product" : 915,
	"purchase_price" : 84,
	"delivery_period" : 3
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c5f"),
	"supplier" : 94,
	"product" : 154,
	"purchase_price" : 22,
	"delivery_period" : 2
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c60"),
	"supplier" : 94,
	"product" : 178,
	"purchase_price" : 18,
	"delivery_period" : 6
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c61"),
	"supplier" : 94,
	"product" : 185,
	"purchase_price" : 32.99,
	"delivery_period" : 1
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c62"),
	"supplier" : 94,
	"product" : 199,
	"purchase_price" : 30.99,
	"delivery_period" : 1
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c63"),
	"supplier" : 94,
	"product" : 474,
	"purchase_price" : 39.99,
	"delivery_period" : 2
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c64"),
	"supplier" : 94,
	"product" : 523,
	"purchase_price" : 20.99,
	"delivery_period" : 3
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c65"),
	"supplier" : 94,
	"product" : 632,
	"purchase_price" : 15.99,
	"delivery_period" : 2
},
{
	"_id" : ObjectId("5fc7f50dec9d2642192d1c66"),
	"supplier" : 94,
	"product" : 899,
	"purchase_price" : 15,
	"delivery_period" : 1
}
])