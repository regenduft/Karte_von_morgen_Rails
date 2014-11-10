# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Tags
tagSocial = Tag.create(
    cssClass: "social",
    icon: "social",
    values: "Soziales")

tagFair = Tag.create(
	cssClass: "fair",
	icon: "fair",
	values: "Fairtrade",
	parents: [tagSocial])

tagOeko = Tag.create(
    cssClass: "eco",
    icon: "eco",
    values: "Ökologisch")

tagBio = Tag.create(
	cssClass: "eco",
	icon: "eco",
	values: "Bio",
	parents: [tagOeko])

tagLocal = Tag.create(
	cssClass: "local",
	icon: "local",
	values: "Lokal",
	parents: [tagOeko])

# Locations
weltladen = Location.create(
	name: "Weltladen", 
	position: "49.632109,8.360786", 
	lang: "de", 
	country: "DE", 
	city: "Worms", 
	zip: "67549", 
	street: "Obermarkt", 
	houseNumber: 4, 
	phone: "06241 973837", 
	createdBy: 0, 
	modifiedBy: nil, 
	icon: "fair", 
	openingHours: "Mo-Fr 10:00-18:00; Sa 10:00-16:00; PH closed", 
	description: "Weltladen Worms",
	tags: [tagFair])

denns = Location.create(
	name: "denn's", 
	position: "49.62711,8.36255", 
	lang: "de", 
	country: "DE", 
	city: "Worms", 
	zip: "67547", 
	street: "Schönauer Straße", 
	houseNumber: 16, 
	phone: "06241 6787877", 
	createdBy: 0, 
	modifiedBy: nil, 
	icon: "eco", 
	openingHours: "08:00-20:00; Su,PH closed", 
	description: "denn's Biomarkt Worms",
	tags: [tagBio])

reformhaus = Location.create(
	name: "Reformhaus", 
	position: "49.631395,8.363943", 
	lang: "de", 
	country: "DE", 
	city: "Worms", 
	zip: "67549", 
	street: "Am Römischen Kaiser", 
	houseNumber: 14, 
	phone: "06241 973837", 
	createdBy: 0, 
	modifiedBy: nil, 
	icon: "fair", 
	openingHours: "Mo-Fr 10:00-18:00; Sa 10:00-16:00; PH closed", 
	description: "Wormser Reformhaus Franz",
	tags: [tagBio])

kreuzhof = Location.create(
	name: "Hofladen Kreuzhof", 
	position: "49.596566,8.458893", 
	lang: "de", 
	country: "DE", 
	city: "Lampertheim", 
	zip: "68623", 
	street: "Biedensandstraße 33", 
	houseNumber: 14, 
	phone: "06206 4771", 
	createdBy: 0, 
	modifiedBy: nil, 
	icon: "local", 
	openingHours: "Tu-Fr 09:00-19:00; Sa 08:00-13:00; Mo,PH closed", 
	description: "Kreuzhofbauer Edyta und Heinz Karb",
	tags: [tagLocal])

# Links
Link.create(
	location: kreuzhof,
	url: "http://www.kreuzhof-karb.de/")

Link.create(
	location: weltladen,
	url: "http://www.weltladen.de/worms")

Link.create(
	location: denns,
	url: "http://www.denns-biomarkt.de/10424_worms.html")

