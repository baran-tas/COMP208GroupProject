import NavBar from "@/components/navbar";
import Image from "next/image";
import { figtree } from "@/public/fonts";

export default function Home() {
  return (
    <div>
      <div><NavBar /></div>
      <div className = "flex justify-center mt-20">
        <h1 className = {`${figtree.className} text-6xl`}>Order To Pickup, Anywhere.</h1>
      </div>
    </div>
  );
}