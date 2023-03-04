puts "🌱 Seeding spices..."

# Seed your database here

#create Recipe instance
r1 = Recipe.create(
    variety: "muffins",
    name: "sweet pineapple muffin",
    image: "https://img.sndimg.com/food/image/upload/f_auto,c_thumb,q_73,ar_16:9,w_1024/v1/img/recipes/37/67/39/picVmQlje.jpg",
    ingredients: [
                "250g Wheat flour",
                 "1/2 tsp Salt",
                  "1/2 sachet Saf-instant yeast 11g",
                  "1/4 tbsp Sugar",
                  "25g Margarine",
                  "1 Egg",
                  "100ml Milk"
    ],
    instructions: [
                "Pour the lukewarm milk into a large mixing bowl and mix in the yeast.",
                "Add the flour, salt, sugar, egg and margarine. Mix until the dough has an even consistency.",
                "Knead for 5 minutes.",
                "Cover and leave to rest for 30 minutes.",
                "Divide the dough into 6 equal pieces.",
                "Shape them into balls. Leave to rest for 10 minutes.",
                "Roll out the dough to the same diameter as a small bowl.",
                "Cover and leave to rise for 1 hour",
                "Make holes in the dough with your fingers. Put small pieces of butter or margarine in the holes. Top with small pieces of pineapple and sprinkle with sugar.",
                "Bake in the oven preheated to 210°C for 10 minutes."
    ]

)

u1 = User.create(
    name: "Asia Mohamed"
)
puts "✅ Done seeding!"
