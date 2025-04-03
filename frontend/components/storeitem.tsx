import React from 'react';
import Image from  'next/image';
import Link from 'next/link';
import { figtree } from "@/public/fonts";

function getImg() {
    let placeholders = [
        { src: "/PH1.svg", value: 1 },
        { src: "/PH2.svg", value: 2 },
        { src: "/PH3.svg", value: 3 }
    ]
    const length = placeholders.length;
    const randomNum = Math.floor(length * Math.random())
    return placeholders[randomNum].src
}

export default function StoreItem() {
    return (
        <div>
            <div>
                <Image
                    src = {getImg()}
                    height = "1050"
                    width = "591"
                    className = "hidden md:block hover:shadow-2xl rounded-md"
                    alt = "Placeholder Image"
                />
                <h1 className = {`${figtree.className} hidden md:block text-2xl mt-2`}>Store Title</h1>
            </div>
        </div>
    );
}
