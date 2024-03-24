import "./Cart.css"
import {useEffect, useState} from "react";
import axios from 'axios';

function Cart() {
  const[cart, setCart] = useState([{
    id: 0n,
    name: "",
    quantity: 0
  }])
  useEffect(() => {
    axios.get(`http://localhost:5000/cart`)
      .then(res => {
        setCart(res.data);
      })
  }, [])
  return <div className='main-menu'>
    {cart.map((element)=>{return <div key={element.id}><p>{element.name}</p></div>})}
  </div>
}

export default Cart