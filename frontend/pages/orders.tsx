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
  return { props: {  } }

}