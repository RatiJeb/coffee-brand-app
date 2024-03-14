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
  const {name, image_url, calories, price, discounted_percent, description} = props.coffee
  return <div className='menu-item' style={{backgroundImage: `url(${image_url})`}}>
    <h1 key={name}>{name}</h1>
    {/*<br/>*/}
    {/*<p>calories: {calories}</p>*/}
    <p>Price: <u>${price}</u></p>
  </div>
}

export default MenuItem
