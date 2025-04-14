import NavBar from "@/components/navbar";
import Image from "next/image";
import { figtree } from "@/public/fonts";
import StoreItem from "@/components/storeitem";
import { GetServerSideProps } from 'next'


export default function StoresPage({data} :any) {
  console.log(data);
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
  

  export const getServerSideProps: GetServerSideProps<{ data: any }> = async () => {
    // Update the endpoint URL to match your running Express server
    const res = await fetch('http://localhost:3000/api/hello')
  
    if (!res.ok) {
      // Optionally, you could handle errors differently.
      // For example, you might return a custom error page:
      return { notFound: true }
    }
  
    // The API should return data in the format: { stores: [...] }
    const data: any = await res.json()
  
    return { props: { data } }
  }