import React from 'react';
import Image from  'next/image';
import Link from 'next/link';
import { figtree } from "@/public/fonts";


function getImg() {
    const placeholders = [
        { src: "/PH1.svg", value: 1 },
        { src: "/PH2.svg", value: 2 },
        { src: "/PH3.svg", value: 3 }
    ]
    const length = placeholders.length;
    const randomNum = Math.floor(length * Math.random())
    return placeholders[randomNum].src
}
//{store_name,store_description,address}:any

type Store = {
    id: number;
    store_name: string;
    store_description: string;
    address: string;
    phone: string;
    tax_id: string;
    establishment_type: string;
    establishment_website: string;
  };

export default function StoreItem({store_name,store_description,id}:Store) {
    console.log(store_name);
    return (
        <div>
          <Link href={`/${id}`}>
            <div>
                <Image
                    src = {getImg()}
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
