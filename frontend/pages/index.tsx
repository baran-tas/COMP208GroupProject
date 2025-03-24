import NavBar from "@/components/navbar";
import Image from "next/image";

export default function Home() {
  return (
    <div>
      <div><NavBar /></div>
      <div className = "w-full mt-4 grid grid-cols-3 place-items-center gap-3">
        <div>
          <Image
            src = "/placeholder.svg"
            height = "1050"
            width = "591"
            className = "hidden md:block hover:shadow-xl"
            alt = "Placeholder Image"
          />
        </div>
        <div>
          <Image
            src = "/placeholder.svg"
            height = "1050"
            width = "591"
            className = "hidden md:block hover:shadow-xl"
            alt = "Placeholder Image"
          />
        </div>
        <div>
          <Image
            src = "/placeholder.svg"
            height = "1050"
            width = "591"
            className = "hidden md:block hover:shadow-xl"
            alt = "Placeholder Image"
          />
        </div>
      </div>
    </div>
  );
}