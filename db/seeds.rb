# frozen_string_literal: true

CoffeeIngredient.create(name: :caffeine)
CoffeeIngredient.create(name: :espresso)
CoffeeIngredient.create(name: :milk)
CoffeeIngredient.create(name: :steamed_milk)
CoffeeIngredient.create(name: :milk_foam)
CoffeeIngredient.create(name: :water)
CoffeeIngredient.create(name: :ice)
CoffeeIngredient.create(name: :caramel_sauce)
CoffeeIngredient.create(name: :vanilla_syrup)

type = CoffeeType.new(name: :espresso,
                      calories: 3,
                      price: 3,
                      description: 'A concentrated coffee extract, brewed by forcing hot water through finely-ground
 coffee beans under high pressure. Rich, intense, and full-bodied, typically served in small volumes.',
                      image_url: 'https://lux-haus.net/cdn/shop/articles/stencil.default_3_471f6dbb-2159-48c9-a41d-4fe6f4bf8e30.jpg?v=1648740565')
type.coffee_type_ingredients.new(coffee_ingredient_id: CoffeeIngredient.find_by(name: :caffeine).id)
type.coffee_type_ingredients.new(coffee_ingredient_id: CoffeeIngredient.find_by(name: :espresso).id)
type.save

type = CoffeeType.new(name: :cappuccino,
                      calories: 150,
                      price: 5.2,
                      description: 'A classic Italian espresso-based beverage featuring equal parts espresso, steamed
 milk, and milk foam. Balanced, creamy, and indulgent, offering a harmonious blend of espresso richness and silky milk
 texture.',
                      image_url: 'https://foodzilla.io/dist/images/does-cappuccino-have-caffeine-in-it.jpg')
type.coffee_type_ingredients.new(coffee_ingredient_id: CoffeeIngredient.find_by(name: :caffeine).id)
type.coffee_type_ingredients.new(coffee_ingredient_id: CoffeeIngredient.find_by(name: :espresso).id)
type.coffee_type_ingredients.new(coffee_ingredient_id: CoffeeIngredient.find_by(name: :steamed_milk).id)
type.coffee_type_ingredients.new(coffee_ingredient_id: CoffeeIngredient.find_by(name: :milk_foam).id)
type.save

type = CoffeeType.new(name: :iced_latte,
                      calories: 200,
                      price: 4.8,
                      description: 'A refreshing variation of the classic latte, served cold over ice. Made with
 espresso, cold milk, and optionally sweetened or flavored syrups. Smooth, creamy, and perfect for warm weather
 enjoyment.',
                      image_url: 'https://alidasfood.com/wp-content/uploads/2021/09/Cafe-Latte-Gelado-45o.jpg')
type.coffee_type_ingredients.new(coffee_ingredient_id: CoffeeIngredient.find_by(name: :caffeine).id)
type.coffee_type_ingredients.new(coffee_ingredient_id: CoffeeIngredient.find_by(name: :espresso).id)
type.coffee_type_ingredients.new(coffee_ingredient_id: CoffeeIngredient.find_by(name: :steamed_milk).id)
type.coffee_type_ingredients.new(coffee_ingredient_id: CoffeeIngredient.find_by(name: :vanilla_syrup).id)
type.coffee_type_ingredients.new(coffee_ingredient_id: CoffeeIngredient.find_by(name: :ice).id)
type.save

type = CoffeeType.new(name: :americano,
                      calories: 18,
                      price: 4,
                      description: 'A simple yet robust coffee beverage made by diluting espresso with hot water. Bold,
 smooth, and flavorful, resembling drip coffee but with a richer taste and aroma.',
                      image_url: 'https://victorallen.com/cdn/shop/articles/gerson-cifuentes-JNhaaPEz3FY-unsplash.jpg?v=1576872775')
type.coffee_type_ingredients.new(coffee_ingredient_id: CoffeeIngredient.find_by(name: :caffeine).id)
type.coffee_type_ingredients.new(coffee_ingredient_id: CoffeeIngredient.find_by(name: :espresso).id)
type.coffee_type_ingredients.new(coffee_ingredient_id: CoffeeIngredient.find_by(name: :water).id)
type.save

type = CoffeeType.new(name: :caramel_macchiato,
                      calories: 300,
                      price: 6,
                      description: 'A decadent espresso-based drink featuring steamed milk, vanilla syrup, and a drizzle
 of caramel sauce. Sweet, creamy, and indulgent, with a perfect balance of espresso richness and caramel sweetness.',
                      image_url: 'https://thelittlestcrumb.com/wp-content/uploads/salted-caramel-macchiato-6.jpg')
type.coffee_type_ingredients.new(coffee_ingredient_id: CoffeeIngredient.find_by(name: :caffeine).id)
type.coffee_type_ingredients.new(coffee_ingredient_id: CoffeeIngredient.find_by(name: :espresso).id)
type.coffee_type_ingredients.new(coffee_ingredient_id: CoffeeIngredient.find_by(name: :steamed_milk).id)
type.coffee_type_ingredients.new(coffee_ingredient_id: CoffeeIngredient.find_by(name: :caramel_sauce).id)
type.coffee_type_ingredients.new(coffee_ingredient_id: CoffeeIngredient.find_by(name: :vanilla_syrup).id)
type.save
