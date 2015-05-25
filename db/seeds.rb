# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Tags
tagCompany = Category.create(name: "Unternehmen")
tagEvent = Category.create(name: "Events")
tagInitiative = Category.create(name: "Initiativen")

tagSocial = Category.create(name: "sozial", parent: tagCompany)
tagBio = Category.create(name: "bio", parent: tagCompany)
tagFair = Category.create(name: "fair", parent: tagInitiative)
tagLocal = Category.create(name: "local", parent: tagCompany)

# Locations
weltladen = Entry.create(
	name: "Weltladen", 
	position: "49.632109,8.360786", 
	city: "Worms", 
	zip: "67549", 
	street: "Obermarkt 4", 
	phone: "06241 973837", 
	url: "http://www.weltladen.de/worms",
	openingHours: "Mo-Fr 10:00-18:00; Sa 10:00-16:00; PH closed", 
	description: "Weltladen Worms",
	categories: [tagFair])

denns = Entry.create(
	name: "denn's", 
	position: "49.62711,8.36255", 
	city: "Worms", 
	zip: "67547", 
	street: "Schönauer Straße 16", 
	phone: "06241 6787877", 
	url: "http://www.denns-biomarkt.de/10424_worms.html",
	openingHours: "08:00-20:00; Su,PH closed", 
	description: "denn's Biomarkt Worms",
	categories: [tagBio])

reformhaus = Entry.create(
	name: "Reformhaus", 
	position: "49.631395,8.363943", 
	city: "Worms", 
	zip: "67549", 
	street: "Am Römischen Kaiser 14", 
	phone: "06241 973837", 
	openingHours: "Mo-Fr 10:00-18:00; Sa 10:00-16:00; PH closed", 
	description: "Wormser Reformhaus Franz",
	categories: [tagBio])

kreuzhof = Entry.create(
	name: "Hofladen Kreuzhof", 
	position: "49.596566,8.458893", 
	city: "Lampertheim", 
	zip: "68623", 
	street: "Biedensandstraße 33", 
	phone: "06206 4771", 
	url: "http://www.kreuzhof-karb.de/",
	openingHours: "Tu-Fr 09:00-19:00; Sa 08:00-13:00; Mo,PH closed", 
	description: "Kreuzhofbauer Edyta und Heinz Karb",
	categories: [tagLocal])

