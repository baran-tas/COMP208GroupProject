import React from 'react';
import { useRouter } from 'next/router';
import { createClient } from '@supabase/supabase-js'



type Product = {
    professional_id:number,
    name:string,
    description:string,
    price:number,
	image_url:string,
    is_available:boolean,
}

function StorePage({orders }:any) {
	const router = useRouter();
	const id = router.query.store;


	const storeId = typeof id === 'string' ? Number(id) : NaN;

	if (isNaN(storeId)) {
	  console.error("Invalid store id:", id);
	  return <div>Error: Invalid store ID.</div>;
	}

	console.log(orders);
  
	const products = orders.filter((product: Product) => product.professional_id === storeId);

	

	
	return (
		<div className="bg-white">
		<div className="mx-auto max-w-2xl px-4 py-16 sm:px-6 sm:py-24 lg:max-w-7xl lg:px-8">
		  <h2 className="sr-only">Products</h2>
  
		  <div className="grid grid-cols-1 gap-y-4 sm:grid-cols-2 sm:gap-x-6 sm:gap-y-10 lg:grid-cols-3 lg:gap-x-8">
			{products.map((product:Product) => (
			  <div
				key={product.name}
				className="group relative flex flex-col overflow-hidden rounded-lg border border-gray-200 bg-white"
			  >
				<img
				  src={product.image_url}
				  className="aspect-3/4 w-full bg-gray-200 object-cover group-hover:opacity-75 sm:aspect-auto sm:h-96"
				/>
				<div className="flex flex-1 flex-col space-y-2 p-4">
				  <h3 className="text-sm font-medium text-gray-900">
					  <span aria-hidden="true" className="absolute inset-0" />
					  {product.name}
				  </h3>
				  <p className="text-sm text-gray-500">{product.description}</p>
				  <div className="flex flex-1 flex-col justify-end">
					<p className="text-base font-medium text-gray-900">{product.price}</p>
				  </div>
				</div>
			  </div>
			))}
		  </div>
		</div>
	  </div>
	);
}

export default StorePage;


export async function getServerSideProps() {
	const supabaseUrl = 'https://dtgzwnupievhycfggxqy.supabase.co'
	const supabaseKey = process.env.SUPABASE_KEY

	const supabase = createClient(supabaseUrl, supabaseKey!);
    let { data: orders, error } = await supabase
  	.from('products')
  	.select('*')
   
	return { props: { orders } }
  }