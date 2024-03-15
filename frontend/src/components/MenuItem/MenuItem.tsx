import "./MenuItem.css"

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
  const {name, image_url, price} = props.coffee
  return <div className='menu-item' style={{backgroundImage: `url(${image_url})`}}>
    <button className='info-btn'>i</button>
    <div>
      <h1>{name}</h1>
      <p>Price: <u>${price}</u></p>
    </div>
  </div>
}


export default MenuItem
