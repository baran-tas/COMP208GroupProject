import NavBar from "@/components/navbar";
import { RootState } from "@/redux/store";
import { useSelector } from 'react-redux';
import { useDispatch } from 'react-redux';
import { addToBag } from '@/redux/shoppingbag';


export default function CheckoutPage() {
    const { shoppingbag } = useSelector((state:RootState) => state.shoppingbag);
    const dispatch = useDispatch();
    console.log(shoppingbag);


    function addItem() {
		// dispatch(addToBag(item));
	}

    return (
      <div>
        <button onClick={addItem}></button>
        <div><NavBar /></div>
        {shoppingbag.map((product, productIdx) => (
            product?.name
							))}
      </div>
    );
  }
  