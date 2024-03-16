import "./MenuItem.css"
import {useState} from "react";
function MenuItem(props: {
  coffee: {
    id: bigint,
    name: string,
    image_url: string,
    calories: number,
    price: number,
    discounted_percent: null | number,
    description: string
  }
}) {
  const {name, image_url, price, description, discounted_percent} = props.coffee

  const [hovering, setHovering] = useState(false)

  return <div onMouseEnter={() => setHovering(true)} onMouseLeave={() => setHovering(false)} className='menu-item' style={{backgroundImage: `url(${image_url})`}}>
    {
      hovering ?
        <>
          <p style={{fontSize: "17px", padding: "10px", textAlign: "justify"}}>{description}</p>
          <button className="add-to-cart-btn">Add to Cart</button>
        </>
        : <>
        <>
          <h1>{name}</h1>
          <p>Price: <u>${price}</u>{discounted_percent && <s>${discounted_percent}</s>}</p>
        </>
      </>
}
  </div>
}

export default MenuItem
