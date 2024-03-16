import "./Menu.css"
import MenuItem from "../MenuItem";
import {useEffect, useState} from "react";
import axios from 'axios';

function Menu() {
  const[coffee, setCoffee] = useState([{
    id: 0n,
    name: "",
    image_url: "",
    calories: 0,
    price: 0.0,
    discounted_percent: null,
    new_price: null,
    description: ""
  }])
  useEffect(() => {
    axios.get(`http://localhost:5000/coffee`)
      .then(res => {
        setCoffee(res.data);
      })
  }, [])
  return <div className='main-menu'>
    {coffee.map(c => <MenuItem key={c.id} coffee={c}/>)}
  </div>
}

export default Menu