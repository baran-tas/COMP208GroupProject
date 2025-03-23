import React from 'react';
import Image from "next/image";
import Link from "next/link";

export default function NavBar() {
    return (
      <nav className = "fixed w-full h-25 shadow-xl">
        <div className = "flex justify-between items-center h-full w-full px-5">
            <Image
              src = "/bunnilogo.svg"
              height = "65"
              width = "65"
              className = "hidden md:block"
              alt = "Bunni Soft Logo"
            />
          <div>
            <ul className = "hidden sm:flex">
              <Link href = "/">
                <li className = "ml-10 hover:border-b text-xl">Home</li>
              </Link>
              <Link href = "/stores">
                <li className = "ml-10 hover:border-b text-xl">Stores</li>
              </Link>
              <Link href = "/orders">
                <li className = "ml-10 hover:border-b text-xl">Orders</li>
              </Link>
              <Link href = "/professional">
                <li className = "ml-10 hover:border-b text-xl">Professional</li>
              </Link>
            </ul>
          </div>
        </div>
      </nav>
    );
  }
  