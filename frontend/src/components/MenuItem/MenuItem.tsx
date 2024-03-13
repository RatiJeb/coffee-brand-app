import "./MenuItem.css"
function MenuItem(props) {
  return <div className='menu-item'>
    <p>
      {props.name}
    </p>
  </div>
}

export default MenuItem