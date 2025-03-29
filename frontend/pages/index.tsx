import NavBar from "@/components/navbar";
import Image from "next/image";
import { figtree } from "@/public/fonts";

export default function Home() {
  return (
    <div>
      <div><NavBar /></div>
      <div className = "mt-6 ml-6">
        <h1 className = {`${figtree.className} hidden md:block text-4xl`}>Stores Close To You</h1>
      </div>
      <div className = "w-full mt-2 grid grid-cols-3 place-items-center gap-3">
        <div>
          <Image
            src = "/PH1.svg"
            height = "1050"
            width = "591"
            className = "hidden md:block hover:shadow-xl rounded-md"
            alt = "Placeholder Image"
          />
        </div>
        <div>
          <Image
            src = "/PH2.svg"
            height = "1050"
            width = "591"
            className = "hidden md:block hover:shadow-xl rounded-md"
            alt = "Placeholder Image"
          />
        </div>
        <div>
          <Image
            src = "/PH3.svg"
            height = "1050"
            width = "591"
            className = "hidden md:block hover:shadow-xl rounded-md"
            alt = "Placeholder Image"
          />
        </div>
      </div>
    </div>
  );
}