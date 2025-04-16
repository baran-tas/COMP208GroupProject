import NavBar from "@/components/navbar";
import Image from "next/image";
import { figtree } from "@/public/fonts";
import StoreItem from "@/components/storeitem";
import { GetServerSideProps } from 'next'
import { createClient } from '@supabase/supabase-js'

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

export default function StoresPage({stores} :any) {
  console.log(stores)
    return (
      <div>
        <div><NavBar /></div>
        <div>
          <div className = "w-full mt-5 grid grid-cols-3 place-items-center gap-3">
            <div>
              {stores?.map((store:Store) => (
                            <StoreItem key={store.id}  {...store}/>

              ))}
            </div>
          </div>
        </div>
      </div>
    );
  }
  

  export async function getServerSideProps() {
  const supabaseUrl = 'https://dtgzwnupievhycfggxqy.supabase.co'
  const supabaseKey = process.env.SUPABASE_KEY ? process.env.SUPABASE_KEY : "";

  const supabase = createClient(supabaseUrl, supabaseKey!);
    const { data: stores, error } = await supabase
    .from('professional')
    .select('*')
   
  return { props: { stores } }
  }