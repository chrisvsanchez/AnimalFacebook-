# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Animal.destroy_all 
Comment.destroy_all 
Post.destroy_all 
p "Generating Animal"
Animal.create([
{
    name: "Donat",
    age: 12,
    species: "Reptile",
    endangered: true 
},
{
    name:"Karem",
    age: 89,
    species: "Homosapien",
    endangered: true
},
{
    name: "Francisco",
    age: 15,
    species: "Fish",
    endangered: false
}
])
p "Generating Animal Complete"
p "Generating Post"
Post.create([
    {
     title:"Fire Starters" ,
     content:"Start fires in Australia",
     animal_id:Animal.all.sample.id  
    },
    {
     title: "Animal Party",
     content:" Woot Woot Party ANIMALS! MOOOOOO!!!!!!", 
     animal_id:Animal.all.sample.id 
    },
    {
     title:"Cool Cats n' Kittens " ,
     content:"Dont let us die",  
     animal_id:Animal.all.sample.id
    }
])
p "Generating Post Complete"
p "Generating Comment"
Comment.create([
    {
        content: "Fish suck",
        animal_id:Animal.all.sample.id
    },
    {
        content: "Lizzards suck",
        animal_id:Animal.all.sample.id
    },
    {
        content: "Humans suck",
        animal_id:Animal.all.sample.id
    }
])
p "Generating Comment Complete"