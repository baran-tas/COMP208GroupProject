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
  image_url: string,
};

export default function StoresPage({ stores }: any) {
  console.log(stores)
  return (
    <div>
      <div><NavBar /></div>
      <div className="mx-auto max-w-2xl px-4 py-16 sm:px-6 sm:py-24 lg:max-w-7xl lg:px-8">
				<div className="grid grid-cols-1 gap-y-4 sm:grid-cols-2 sm:gap-x-6 sm:gap-y-10 lg:grid-cols-3 lg:gap-x-8">       

            {stores?.map((store: Store) => (
              <StoreItem key={store.id}  {...store} />

            ))}
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
