puts 'seeding'


powers = [
    {name: "super strength",description: "gives the wielder super-human strengths"},
{name: "flight",description: "gives the wielder the ability to fly through the skies at supersonic speed"},
{name: "Super Stamina", description: "The ability to endure great physical stress without tiring"},
{name: "Super Agility", description: "The ability to move with great agility and balance"}
]
puts "creating powers...."
powers.each {|power| Power.create(power)}

heroes = [
{name: "Kamala Khan", super_name: "Ms. Marvel"},
{name: "Doreen Green", super_name: "Squirrel Girl"},
{name: "Gwen Stacy", super_name: "Spider-Gwen"},
{name: "Peter Parker", super_name: "Spiderman"},
{name: "Barry Allen", super_name: "Flash"}
]
puts "creating heroes...."
heroes.each {|hero| Hero.create(hero)}

HeroPower.create!(strength:"Strong", hero_id: 1, power_id:2)
HeroPower.create!(strength:"Weak",hero_id: 2, power_id:3)
HeroPower.create!(strength:"Average",hero_id: 4, power_id:4 )
HeroPower.create!(strength:"Weak",  hero_id: 3, power_id:2,)
HeroPower.create!(strength:"Strong", hero_id: 5, power_id:2 )
HeroPower.create!(strength:"Weak", hero_id: 2, power_id:4 ) 
HeroPower.create!(strength:"Average", hero_id: 5, power_id:4)
puts  'Done'