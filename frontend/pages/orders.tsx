import NavBar from "@/components/navbar";

export default function OrdersPage({data} : any) {
  console.log(data);
  return (
    <div>
      <div><NavBar /></div>
      <div>Orders Placeholder</div>
    </div>
  );
}

export async function getServerSideProps() {
  const res = await fetch(`https://.../data`)
  const data = await res.json()
 
  return { props: { data } }
}