import NavBar from "@/components/navbar";
import Image from "next/image";
import { figtree } from "@/public/fonts";
import StoreItem from "@/components/storeitem";
import { GetServerSideProps } from 'next'
import { store } from "@/redux/store";


export default function StoresPage({data} :any) {
  const {Stores} = data
  console.log(Stores)
    return (
      <div>
        <div><NavBar /></div>
        <div>
          <div className = "w-full mt-5 grid grid-cols-3 place-items-center gap-3">
            <div>
              {Stores.map((store) => (
                            <StoreItem key={store.id} props = {...store}/>

              ))}
            </div>
          </div>
        </div>
      </div>
    );
  }
  

  export const getServerSideProps: GetServerSideProps<{ data: any }> = async () => {
    // Update the endpoint URL to match your running Express server
    const res = await fetch('http://localhost:3000/api/stores')
 
  
    // The API should return data in the format: { stores: [...] }
    const data: any = await res.json()
  
    return { props: { data } }
  }