import React from 'react';
import Image from  'next/image';
import Link from 'next/link';
import { figtree } from "@/public/fonts";



type Store = {
    id: number;
    store_name: string;
    store_description: string;
    address: string;
    phone: string;
    tax_id: string;
    image_url:string;
    establishment_type: string;
    establishment_website: string;
  };

export default function StoreItem({store_name,store_description,image_url,id}:Store) {
    console.log(store_name);
    return (
        <div>
          <Link href={`/${id}`}>
            <div>
                <Image
                    src = {image_url}
                    height = "1050"
                    width = "591"
                    className = "hidden md:block hover:shadow-2xl rounded-md"
                    alt = "Placeholder Image"
                />
                <h1 className = {`${figtree.className} hidden md:block text-2xl mt-2`}>{store_name}</h1>
                <p>{store_description}</p>
            </div>
          </Link>
        </div>
    );
}
