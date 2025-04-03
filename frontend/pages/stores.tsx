import NavBar from "@/components/navbar";
import Image from "next/image";
import { figtree } from "@/public/fonts";
import StoreItem from "@/components/storeitem";

export default function StoresPage() {
    return (
      <div>
        <div><NavBar /></div>
        <div>
          <div className = "w-full mt-5 grid grid-cols-3 place-items-center gap-3">
            <div>
              <StoreItem />
            </div>
          </div>
        </div>
      </div>
    );
  }
  