// Next.js API route support: https://nextjs.org/docs/api-routes/introduction
import type { NextApiRequest, NextApiResponse } from "next";
type Product = {
    professional_id:number,
    name:string,
    description:string,
    price:number,
    image_url:string,
    is_available:boolean,
}

type Products = {
    Products: [Product]
}

let {Products} = {
    "Products": [
      {
        "professional_id": 1,
        "name": "Espresso",
        "description": "Strong and bold espresso",
        "price": 2.99,
        "image_url": "https://coffeeshop.co.uk/espresso.png",
        "is_available": true
      },
      {
        "professional_id": 1,
        "name": "Cappuccino",
        "description": "Creamy cappuccino with froth",
        "price": 3.99,
        "image_url": "https://coffeeshop.co.uk/cappuccino.png",
        "is_available": true
      },
      {
        "professional_id": 1,
        "name": "Latte",
        "description": "Smooth latte with steamed milk",
        "price": 4.49,
        "image_url": "https://coffeeshop.co.uk/latte.png",
        "is_available": true
      },
      {
        "professional_id": 1,
        "name": "Americano",
        "description": "Espresso with hot water",
        "price": 2.49,
        "image_url": "https://coffeeshop.co.uk/americano.png",
        "is_available": true
      },
      {
        "professional_id": 1,
        "name": "Mocha",
        "description": "Hot chocolate and coffee",
        "price": 4.99,
        "image_url": "https://coffeeshop.co.uk/mocha.png",
        "is_available": true
      },
      {
        "professional_id": 1,
        "name": "Iced Coffee",
        "description": "Chilled and refreshing iced coffee",
        "price": 3.49,
        "image_url": "https://coffeeshop.co.uk/icedcoffee.png",
        "is_available": true
      },
      {
        "professional_id": 1,
        "name": "Frappuccino",
        "description": "Blended iced coffee drink",
        "price": 4.99,
        "image_url": "https://coffeeshop.co.uk/frappuccino.png",
        "is_available": true
      },
      {
        "professional_id": 1,
        "name": "Tea",
        "description": "Regular black tea",
        "price": 2.49,
        "image_url": "https://coffeeshop.co.uk/tea.png",
        "is_available": true
      },
      {
        "professional_id": 2,
        "name": "Classic Burger",
        "description": "Beef burger with lettuce, tomato, and cheese",
        "price": 5.99,
        "image_url": "https://burgerplace.co.uk/classicburger.png",
        "is_available": true
      },
      {
        "professional_id": 2,
        "name": "Cheeseburger",
        "description": "Burger with a slice of cheese",
        "price": 6.49,
        "image_url": "https://burgerplace.co.uk/cheeseburger.png",
        "is_available": true
      },
      {
        "professional_id": 2,
        "name": "Bacon Burger",
        "description": "Burger topped with crispy bacon",
        "price": 6.99,
        "image_url": "https://burgerplace.co.uk/baconburger.png",
        "is_available": true
      },
      {
        "professional_id": 2,
        "name": "Veggie Burger",
        "description": "Plant based burger",
        "price": 5.49,
        "image_url": "https://burgerplace.co.uk/veggieburger.png",
        "is_available": true
      },
      {
        "professional_id": 2,
        "name": "Double Burger",
        "description": "Double patty burger",
        "price": 7.99,
        "image_url": "https://burgerplace.co.uk/doubleburger.png",
        "is_available": true
      },
      {
        "professional_id": 2,
        "name": "Chicken Burger",
        "description": "Burger with grilled chicken",
        "price": 6.49,
        "image_url": "https://burgerplace.co.uk/chickenburger.png",
        "is_available": true
      },
      {
        "professional_id": 2,
        "name": "Spicy Burger",
        "description": "Spicy burger",
        "price": 6.99,
        "image_url": "https://burgerplace.co.uk/spicyburger.png",
        "is_available": true
      },
      {
        "professional_id": 2,
        "name": "Slider",
        "description": "Slider burger",
        "price": 3.99,
        "image_url": "https://burgerplace.co.uk/slider.png",
        "is_available": true
      },
      {
        "professional_id": 3,
        "name": "Margherita Pizza",
        "description": "Classic pizza with tomato, mozzarella, and basil",
        "price": 7.99,
        "image_url": "https://pizzapalace.co.uk/margheritapizza.png",
        "is_available": true
      },
      {
        "professional_id": 3,
        "name": "Pepperoni Pizza",
        "description": "Pizza topped with pepperoni slices",
        "price": 8.99,
        "image_url": "https://pizzapalace.co.uk/pepperonipizza.png",
        "is_available": true
      },
      {
        "professional_id": 3,
        "name": "Hawaiian Pizza",
        "description": "Pizza with ham and pineapple",
        "price": 8.49,
        "image_url": "https://pizzapalace.co.uk/hawaiianpizza.png",
        "is_available": true
      },
      {
        "professional_id": 3,
        "name": "Veggie Pizza",
        "description": "Pizza loaded with fresh vegetables",
        "price": 7.99,
        "image_url": "https://pizzapalace.co.uk/veggiepizza.png",
        "is_available": true
      },
      {
        "professional_id": 3,
        "name": "BBQ Chicken Pizza",
        "description": "Pizza with BBQ chicken and red onions",
        "price": 9.49,
        "image_url": "https://pizzapalace.co.uk/bbqchickenpizza.png",
        "is_available": true
      },
      {
        "professional_id": 3,
        "name": "Meat Feast Pizza",
        "description": "Pizza loaded with various meats",
        "price": 9.99,
        "image_url": "https://pizzapalace.co.uk/meatfeastpizza.png",
        "is_available": true
      },
      {
        "professional_id": 3,
        "name": "Supreme Pizza",
        "description": "Pizza with a variety of toppings",
        "price": 9.49,
        "image_url": "https://pizzapalace.co.uk/supremepizza.png",
        "is_available": true
      },
      {
        "professional_id": 3,
        "name": "Cheese Pizza",
        "description": "Simple pizza with extra cheese",
        "price": 7.49,
        "image_url": "https://pizzapalace.co.uk/cheesepizza.png",
        "is_available": true
      },
      {
        "professional_id": 4,
        "name": "Chicken Taco",
        "description": "Taco filled with grilled chicken",
        "price": 2.99,
        "image_url": "https://tacotown.co.uk/chickentaco.png",
        "is_available": true
      },
      {
        "professional_id": 4,
        "name": "Beef Taco",
        "description": "Taco filled with seasoned beef",
        "price": 2.99,
        "image_url": "https://tacotown.co.uk/beeftaco.png",
        "is_available": true
      },
      {
        "professional_id": 4,
        "name": "Fish Taco",
        "description": "Taco filled with grilled fish",
        "price": 3.49,
        "image_url": "https://tacotown.co.uk/fishtaco.png",
        "is_available": true
      },
      {
        "professional_id": 4,
        "name": "Pork Taco",
        "description": "Taco with tender pork filling",
        "price": 3.49,
        "image_url": "https://tacotown.co.uk/porktaco.png",
        "is_available": true
      },
      {
        "professional_id": 4,
        "name": "Veggie Taco",
        "description": "Taco with a mix of vegetables",
        "price": 2.99,
        "image_url": "https://tacotown.co.uk/veggietaco.png",
        "is_available": true
      },
      {
        "professional_id": 4,
        "name": "Shrimp Taco",
        "description": "Taco filled with grilled shrimp",
        "price": 3.99,
        "image_url": "https://tacotown.co.uk/shrimptaco.png",
        "is_available": true
      },
      {
        "professional_id": 4,
        "name": "Breakfast Taco",
        "description": "Taco with eggs and bacon",
        "price": 3.99,
        "image_url": "https://tacotown.co.uk/breakfasttaco.png",
        "is_available": true
      },
      {
        "professional_id": 4,
        "name": "Taco Salad",
        "description": "Salad version of the taco",
        "price": 4.49,
        "image_url": "https://tacotown.co.uk/tacosalad.png",
        "is_available": true
      },
      {
        "professional_id": 5,
        "name": "Ham Sandwich",
        "description": "Sandwich with ham, cheese, and lettuce",
        "price": 4.99,
        "image_url": "https://sandwichshop.co.uk/hamsandwich.png",
        "is_available": true
      },
      {
        "professional_id": 5,
        "name": "Turkey Sandwich",
        "description": "Sandwich with turkey, avocado, and tomato",
        "price": 5.49,
        "image_url": "https://sandwichshop.co.uk/turkeysandwich.png",
        "is_available": true
      },
      {
        "professional_id": 5,
        "name": "Veggie Sandwich",
        "description": "Sandwich with assorted vegetables",
        "price": 4.99,
        "image_url": "https://sandwichshop.co.uk/veggiesandwich.png",
        "is_available": true
      },
      {
        "professional_id": 5,
        "name": "Club Sandwich",
        "description": "Triple-decker sandwich with multiple fillings",
        "price": 6.99,
        "image_url": "https://sandwichshop.co.uk/clubsandwich.png",
        "is_available": true
      },
      {
        "professional_id": 5,
        "name": "Grilled Cheese",
        "description": "Classic grilled cheese sandwich",
        "price": 3.99,
        "image_url": "https://sandwichshop.co.uk/grilledcheese.png",
        "is_available": true
      },
      {
        "professional_id": 5,
        "name": "BLT Sandwich",
        "description": "Bacon, lettuce, and tomato sandwich",
        "price": 5.49,
        "image_url": "https://sandwichshop.co.uk/bltsandwich.png",
        "is_available": true
      },
      {
        "professional_id": 5,
        "name": "Roast Beef Sandwich",
        "description": "Sandwich with roast beef and horseradish sauce",
        "price": 6.49,
        "image_url": "https://sandwichshop.co.uk/roastbeefsandwich.png",
        "is_available": true
      },
      {
        "professional_id": 5,
        "name": "Chicken Salad Sandwich",
        "description": "Sandwich with chicken salad filling",
        "price": 5.99,
        "image_url": "https://sandwichshop.co.uk/chickensaladsandwich.png",
        "is_available": true
      },
      {
        "professional_id": 6,
        "name": "Kung Pao Chicken",
        "description": "Spicy stir-fried chicken with peanuts",
        "price": 7.99,
        "image_url": "https://chinesefoodplace.co.uk/kungpaochicken.png",
        "is_available": true
      },
      {
        "professional_id": 6,
        "name": "Sweet and Sour Pork",
        "description": "Pork with a tangy sweet and sour sauce",
        "price": 8.49,
        "image_url": "https://chinesefoodplace.co.uk/sweetandsourpork.png",
        "is_available": true
      },
      {
        "professional_id": 6,
        "name": "Fried Rice",
        "description": "Stir-fried rice with vegetables and egg",
        "price": 6.99,
        "image_url": "https://chinesefoodplace.co.uk/friedrice.png",
        "is_available": true
      },
      {
        "professional_id": 6,
        "name": "Lo Mein",
        "description": "Noodles stir-fried with vegetables and meat",
        "price": 7.49,
        "image_url": "https://chinesefoodplace.co.uk/lomein.png",
        "is_available": true
      },
      {
        "professional_id": 6,
        "name": "Spring Rolls",
        "description": "Crispy rolls filled with vegetables",
        "price": 4.99,
        "image_url": "https://chinesefoodplace.co.uk/springrolls.png",
        "is_available": true
      },
      {
        "professional_id": 6,
        "name": "Tofu",
        "description": "Literally just tofu",
        "price": 7.99,
        "image_url": "https://chinesefoodplace.co.uk/tofu.png",
        "is_available": true
      },
      {
        "professional_id": 6,
        "name": "Chow Mein",
        "description": "Stir-fried noodles with vegetables and meat",
        "price": 7.49,
        "image_url": "https://chinesefoodplace.co.uk/chowmein.png",
        "is_available": true
      },
      {
        "professional_id": 6,
        "name": "Dumplings",
        "description": "Steamed or fried dumplings filled with meat and vegetables",
        "price": 5.99,
        "image_url": "https://chinesefoodplace.co.uk/dumplings.png",
        "is_available": true
      },
      {
        "professional_id": 7,
        "name": "Spaghetti Bolognese",
        "description": "Classic spaghetti with meat sauce",
        "price": 8.99,
        "image_url": "https://pastaplace.co.uk/spaghettibolognese.png",
        "is_available": true
      },
      {
        "professional_id": 7,
        "name": "Fettuccine Alfredo",
        "description": "Pasta in a creamy alfredo sauce",
        "price": 9.49,
        "image_url": "https://pastaplace.co.uk/fettuccinealfredo.png",
        "is_available": true
      },
      {
        "professional_id": 7,
        "name": "Penne Arrabiata",
        "description": "Penne pasta in a spicy tomato sauce",
        "price": 8.49,
        "image_url": "https://pastaplace.co.uk/pennearrabiata.png",
        "is_available": true
      },
      {
        "professional_id": 7,
        "name": "Lasagna",
        "description": "Layered pasta with meat and cheese",
        "price": 10.99,
        "image_url": "https://pastaplace.co.uk/lasagna.png",
        "is_available": true
      },
      {
        "professional_id": 7,
        "name": "Ravioli",
        "description": "Pasta pockets filled with cheese or meat",
        "price": 9.99,
        "image_url": "https://pastaplace.co.uk/ravioli.png",
        "is_available": true
      },
      {
        "professional_id": 7,
        "name": "Carbonara",
        "description": "Pasta in a creamy egg and pancetta sauce",
        "price": 9.49,
        "image_url": "https://pastaplace.co.uk/carbonara.png",
        "is_available": true
      },
      {
        "professional_id": 7,
        "name": "Pasta Primavera",
        "description": "Pasta with fresh seasonal vegetables",
        "price": 8.99,
        "image_url": "https://pastaplace.co.uk/pastaprimavera.png",
        "is_available": true
      },
      {
        "professional_id": 7,
        "name": "Gnocchi",
        "description": "Potato dumplings served with pesto",
        "price": 8.49,
        "image_url": "https://pastaplace.co.uk/gnocchi.png",
        "is_available": true
      },
      {
        "professional_id": 8,
        "name": "Glazed Doughnut",
        "description": "Classic glazed doughnut",
        "price": 1.99,
        "image_url": "https://doughnutshop.co.uk/glazeddoughnut.png",
        "is_available": true
      },
      {
        "professional_id": 8,
        "name": "Chocolate Doughnut",
        "description": "Doughnut with chocolate icing",
        "price": 2.49,
        "image_url": "https://doughnutshop.co.uk/chocolatedoughnut.png",
        "is_available": true
      },
      {
        "professional_id": 8,
        "name": "Jam Doughnut",
        "description": "Doughnut filled with fruit jam",
        "price": 2.49,
        "image_url": "https://doughnutshop.co.uk/jamdoughnut.png",
        "is_available": true
      },
      {
        "professional_id": 8,
        "name": "Powdered Doughnut",
        "description": "Doughnut dusted with powdered sugar",
        "price": 1.99,
        "image_url": "https://doughnutshop.co.uk/powdereddoughnut.png",
        "is_available": true
      },
      {
        "professional_id": 8,
        "name": "Cinnamon Twist",
        "description": "Doughnut with a cinnamon sugar coating",
        "price": 2.49,
        "image_url": "https://doughnutshop.co.uk/cinnamontwist.png",
        "is_available": true
      },
      {
        "professional_id": 8,
        "name": "Sugar Doughnut",
        "description": "Simple doughnut sprinkled with sugar",
        "price": 1.99,
        "image_url": "https://doughnutshop.co.uk/sugardoughnut.png",
        "is_available": true
      },
      {
        "professional_id": 8,
        "name": "Boston Cream",
        "description": "Doughnut filled with cream and topped with chocolate",
        "price": 2.99,
        "image_url": "https://doughnutshop.co.uk/bostoncream.png",
        "is_available": true
      },
      {
        "professional_id": 8,
        "name": "Maple Doughnut",
        "description": "Doughnut with maple icing",
        "price": 2.49,
        "image_url": "https://doughnutshop.co.uk/mapledoughnut.png",
        "is_available": true
      },
      {
        "professional_id": 9,
        "name": "Caesar Salad",
        "description": "Classic Caesar salad with croutons and parmesan",
        "price": 5.99,
        "image_url": "https://saladbar.co.uk/caesarsalad.png",
        "is_available": true
      },
      {
        "professional_id": 9,
        "name": "Greek Salad",
        "description": "Salad with feta cheese, olives, and vegetables",
        "price": 5.49,
        "image_url": "https://saladbar.co.uk/greeksalad.png",
        "is_available": true
      },
      {
        "professional_id": 9,
        "name": "Garden Salad",
        "description": "Fresh mixed greens with assorted vegetables",
        "price": 4.99,
        "image_url": "https://saladbar.co.uk/gardensalad.png",
        "is_available": true
      },
      {
        "professional_id": 9,
        "name": "Cobb Salad",
        "description": "Salad with chicken, bacon, avocado, and egg",
        "price": 6.99,
        "image_url": "https://saladbar.co.uk/cobbsalad.png",
        "is_available": true
      },
      {
        "professional_id": 9,
        "name": "Fruit Salad",
        "description": "Mixed seasonal fruits",
        "price": 4.99,
        "image_url": "https://saladbar.co.uk/fruitsalad.png",
        "is_available": true
      },
      {
        "professional_id": 9,
        "name": "Pasta Salad",
        "description": "Cold pasta salad with vegetables",
        "price": 5.49,
        "image_url": "https://saladbar.co.uk/pastasalad.png",
        "is_available": true
      },
      {
        "professional_id": 9,
        "name": "Quinoa Salad",
        "description": "Healthy salad with quinoa and veggies",
        "price": 5.99,
        "image_url": "https://saladbar.co.uk/quinoasalad.png",
        "is_available": true
      },
      {
        "professional_id": 9,
        "name": "Spinach Salad",
        "description": "Fresh spinach salad with a light dressing",
        "price": 4.99,
        "image_url": "https://saladbar.co.uk/spinachsalad.png",
        "is_available": true
      },
      {
        "professional_id": 10,
        "name": "Smoked Brisket",
        "description": "Tender smoked brisket with rich flavor",
        "price": 10.99,
        "image_url": "https://texanbbq.co.uk/smokedbrisket.png",
        "is_available": true
      },
      {
        "professional_id": 10,
        "name": "BBQ Ribs",
        "description": "Juicy BBQ ribs with smoky sauce",
        "price": 11.99,
        "image_url": "https://texanbbq.co.uk/bbqribs.png",
        "is_available": true
      },
      {
        "professional_id": 10,
        "name": "Pulled Pork Sandwich",
        "description": "Sandwich with pulled pork and BBQ sauce",
        "price": 8.99,
        "image_url": "https://texanbbq.co.uk/pulledporksandwich.png",
        "is_available": true
      },
      {
        "professional_id": 10,
        "name": "BBQ Chicken",
        "description": "Grilled chicken with BBQ sauce",
        "price": 9.99,
        "image_url": "https://texanbbq.co.uk/bbqchicken.png",
        "is_available": true
      },
      {
        "professional_id": 10,
        "name": "Sausage Plate",
        "description": "Assorted BBQ sausages",
        "price": 9.49,
        "image_url": "https://texanbbq.co.uk/sausageplate.png",
        "is_available": true
      },
      {
        "professional_id": 10,
        "name": "Burnt Ends",
        "description": "Crispy, flavorful burnt ends",
        "price": 10.49,
        "image_url": "https://texanbbq.co.uk/burntends.png",
        "is_available": true
      },
      {
        "professional_id": 10,
        "name": "BBQ Beans",
        "description": "Hearty BBQ beans",
        "price": 5.99,
        "image_url": "https://texanbbq.co.uk/bbqbeans.png",
        "is_available": true
      },
      {
        "professional_id": 10,
        "name": "Coleslaw",
        "description": "Classic coleslaw with tangy dressing",
        "price": 4.99,
        "image_url": "https://texanbbq.co.uk/coleslaw.png",
        "is_available": true
      }
    ]
  }
type Data = {
  name: string;
};

export default function handler(
  req: NextApiRequest,
  res: NextApiResponse<any>,
) {
    console.log(Products);
  res.status(200).json({ Products });
}