import { createSlice, PayloadAction } from '@reduxjs/toolkit';

// Define types
interface ShoppingBagItem {
  id: string | number;
  quantity: number;
  [key: string]: any; // For any additional properties
}

interface ShoppingBagState {
  shoppingbag: ShoppingBagItem[];
}

// Initial state with type
const initialState: ShoppingBagState = {
  shoppingbag: [],
};

export const shoppingbagSlice = createSlice({
  name: 'shoppingbag',
  initialState,
  reducers: {
    addToBag: (state, action: PayloadAction<ShoppingBagItem>) => {
      console.log(state, action.payload);
      const itemInBag = state.shoppingbag.find(
        (item) => item.id === action.payload.id
      );
      if (itemInBag) {
        itemInBag.quantity++;
      } else {
        state.shoppingbag.push({ ...action.payload, quantity: 1 });
      }
    },
    incrementQuantity: (state, action: PayloadAction<string | number>) => {
      const item = state.shoppingbag.find((item) => item.id === action.payload);
      if(!item) return;
      item.quantity++;
    },
    decrementQuantity: (state, action: PayloadAction<string | number>) => {
      const item = state.shoppingbag.find((item) => item.id === action.payload);
      if(!item) return;
      if (item.quantity === 1) {
        item.quantity = 1;
      } else {
        item.quantity--;
      }
    },
    removeItem: (state, action: PayloadAction<{ id: string | number }>) => {
      const removeItem = state.shoppingbag.filter((item) => {
        return item.id !== action.payload.id;
      });
      console.log('remove item', removeItem);
      state.shoppingbag = removeItem;
    },
  },
});

// Action creators are generated for each case reducer function
export const { addToBag, incrementQuantity, decrementQuantity, removeItem } =
  shoppingbagSlice.actions;

export default shoppingbagSlice.reducer;