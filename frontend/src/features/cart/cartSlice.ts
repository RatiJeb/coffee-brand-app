import {createSlice} from "@reduxjs/toolkit";

const initialState = {
  cartItems: [],
  quantity: 0,
  total_price: 0
}

const cartSlice = createSlice({
  name: 'cart',
  initialState,
  reducers: {}
})

export default cartSlice.reducer;