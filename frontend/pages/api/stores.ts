// Next.js API route support: https://nextjs.org/docs/api-routes/introduction
import { store } from "@/redux/store";
import type { NextApiRequest, NextApiResponse } from "next";

const {Stores} = {Stores: [
    {
      "id": 1,
      "tax_id": "taxid1",
      "store_name": "Coffee Shop",
      "store_description": "Cozy cafe serving coffee and pastries",
      "phone": "02011588811",
      "address": "231 Coffee Shop Avenue",
      "establishment_type": "Cafe",
      "establishment_website": "https://coffeeshop.co.uk"
    },
    {
      "id": 2,
      "tax_id": "taxid2",
      "store_name": "Burger Place",
      "store_description": "Modern fast food burger joint",
      "phone": "02049498172",
      "address": "546 Buger Place",
      "establishment_type": "Fast Food",
      "establishment_website": "https://burgerplace.co.uk"
    },
    {
      "id": 3,
      "tax_id": "taxid3",
      "store_name": "Pizza Palace",
      "store_description": "Hot, fast, and tasty pizza",
      "phone": "02038392914",
      "address": "723 Pizza Lane",
      "establishment_type": "Restaurant",
      "establishment_website": "https://pizzapalace.co.uk"
    },
    {
      "id": 4,
      "tax_id": "taxid4",
      "store_name": "Taco Town",
      "store_description": "Street style tacos",
      "phone": "02093504003",
      "address": "429 Taco City",
      "establishment_type": "Food Truck",
      "establishment_website": "https://tacotown.co.uk"
    },
    {
      "id": 5,
      "tax_id": "taxid5",
      "store_name": "Sandwich Shop",
      "store_description": "Quick and tasty sandwiches",
      "phone": "02052432881",
      "address": "582 Sandwich Corner",
      "establishment_type": "Cafe",
      "establishment_website": "https://sandwichshop.co.uk"
    },
    {
      "id": 6,
      "tax_id": "taxid6",
      "store_name": "Chinese Food Place",
      "store_description": "Fresh traditional Chinese food",
      "phone": "02040797165",
      "address": "312 China Town",
      "establishment_type": "Restaurant",
      "establishment_website": "https://chinesefoodplace.co.uk"
    },
    {
      "id": 7,
      "tax_id": "taxid7",
      "store_name": "Pasta Place",
      "store_description": "Great, fresh pasta",
      "phone": "02077849621",
      "address": "289 Pasta Road",
      "establishment_type": "Restaurant",
      "establishment_website": "https://pastaplace.co.uk"
    },
    {
      "id": 8,
      "tax_id": "taxid8",
      "store_name": "Doughnut Shop",
      "store_description": "Doughnuts, doughnuts, and doughnuts",
      "phone": "02067370931",
      "address": "689 Fried Goods Lane",
      "establishment_type": "Fast Food",
      "establishment_website": "https://doughnutshop.co.uk"
    },
    {
      "id": 9,
      "tax_id": "taxid9",
      "store_name": "Salad Bar",
      "store_description": "Healthy salads and vegan food",
      "phone": "02023816087",
      "address": "143 Vegan Food Street",
      "establishment_type": "Cafe",
      "establishment_website": "https://saladbar.co.uk"
    },
    {
      "id": 10,
      "tax_id": "taxid10",
      "store_name": "Texan BBQ",
      "store_description": "Smoked Texan meat and BBQ",
      "phone": "02034829695",
      "address": "594 Texas Lane",
      "establishment_type": "Fast Food",
      "establishment_website": "https://texanbbq.co.uk"
    }
  ]
    
}


export default function handler(
  req: NextApiRequest,
  res: NextApiResponse<any>,
) {
    console.log(store);
  res.status(200).json({ Stores });
}