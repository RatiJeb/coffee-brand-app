import "./MenuItem.css"
import {useState} from "react";
function MenuItem(props: {
  coffee: {
    id: bigint,
    name: string,
    image_url: string,
    calories: number,
    price: number,
    new_price: undefined | null | number,
    discounted_percent: null | number,
    description: string
  }
}) {
  const {id, name, image_url, price, description, discounted_percent, new_price} = props.coffee

  const [hovering, setHovering] = useState(false)

  return <div onMouseEnter={() => setHovering(true)} onMouseLeave={() => setHovering(false)} className='menu-item' style={{backgroundImage: `url(${image_url})`}} key={id}>
    {
      hovering ?
        <>
          <p style={{fontSize: "17px", padding: "10px", textAlign: "justify"}}>{description}</p>
          <button className="add-to-cart-btn" onClick={()=>{}}>Add to Cart</button>
        </>
        :
        <>
          <>
          {discounted_percent && <p style={{backgroundColor: "#fc6666", alignSelf:"end", position: "absolute", top: "0%", right: "0%", padding: "5px", borderRadius: "0 25px 0 0"}}>{`${discounted_percent}% off`}</p>}
            <h1>{name}</h1>
            <p>Price: {discounted_percent && <s>${new_price}</s>} <u>${price}</u></p>
          </>
        </>
}
  </div>
}

export default MenuItem
