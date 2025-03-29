import React from 'react';
import Image from "next/image";
import Link from "next/link";

export default function NavBar() {
    return (
      <nav className = "sticky w-full h-20 shadow-lg bg-[#E53D00]">
        <div className = "flex justify-between items-center h-full w-full px-5">
            <Image
              src = "/projectlogo.svg"
              height = "418"
              width = "163"
              className = "hidden md:block"
              alt = "Bunni Soft Logo"
            />
          <div>
            <ul className = "hidden sm:flex">
              <Link href = "/">
                <li className = "ml-10 hover:border-b text-xl text-white font-bold">Home</li>
              </Link>
              <Link href = "/stores">
                <li className = "ml-10 hover:border-b text-xl text-white font-bold">Stores</li>
              </Link>
              <Link href = "/orders">
                <li className = "ml-10 hover:border-b text-xl text-white font-bold">Orders</li>
              </Link>
              <Link href = "/professional">
                <li className = "ml-10 hover:border-b text-xl text-white font-bold">Professional</li>
              </Link>
            </ul>
          </div>
        </div>
      </nav>
    );
  }
  