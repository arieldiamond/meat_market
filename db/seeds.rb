User.create(username: "ariel", email: "akd@akd.com", password: "123456")
User.create(username: "cyn", email: "cyn@akd.com", password: "123456")

Animal.create(animal: "Cow", meat_name: "Beef")
Animal.create(animal: "Sheep", meat_name: "Lamb")
Animal.create(animal: "Pig", meat_name: "Pork")
Animal.create(animal: "Bison", meat_name: "Bison")
Animal.create(animal: "Goat", meat_name: "Goat")

Primal.create(animal_id: 1, anatomy: "Forequarter")
Primal.create(animal_id: 1, anatomy: "Hindquarter")
Primal.create(animal_id: 1, anatomy: "Loin")
Primal.create(animal_id: 1, anatomy: "Hindquarter")
Primal.create(animal_id: 1, anatomy: "Hindquarter")
Primal.create(animal_id: 1, anatomy: "Hindquarter")

Meatcut.create(cut_name: "flatiron", primal_id: 1)
Meatcut.create(cut_name: "pot roast", primal_id: 1)
Meatcut.create(cut_name: "sirloin", primal_id: 2)

Technique.create(name: "Grill", description: "Hot, dry heat")
Technique.create(name: "Braise", description: "Low, slow, and moist")

Recipe.create(title: "Grilled Flatiron", ingredients: "flatiron, salt, pepper", directions: "Salt it and grill it", creator_id: 1, meatcut_id: 1, technique_id: 1)

Pin.create(user_id: 2, recipe_id: 1)
