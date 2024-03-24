import {createSlice} from "@reduxjs/toolkit";

const initialState = {
  cartItems: [{quantity: 0, id: null}],
  quantity: 0,
  total_price: 0
}

const cartSlice = createSlice({
  name: 'cart',
  initialState,
  reducers: {
    addItem: (state, { payload }) => {
      state.cartItems = state.cartItems.concat(payload)
      const cartItem = state.cartItems.find((item) => item.id === payload.id);
      {cartItem?.quantity && (cartItem.quantity = cartItem?.quantity + 1)}
      state.quantity = state.quantity + 1;
    }
  }
})

export default cartSlice.reducer;