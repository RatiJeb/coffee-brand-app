import "./Navbar.css"
import cartIcon from "../../assets/cart-img.png"
import coffeeLogo from "../../../public/coffee-logo.png"
import {Link} from "react-router-dom";

function Navbar() {
let cartItemsCount = 0;
  return <header>
    <div className='green-line'/>
    <nav className='navbar'>
      <div className='nav-menu'>
        <img src={coffeeLogo} alt="coffee logo" className='nav-logo'/>
        <div className="navbar-items">
          <Link to='/'>Home</Link>
          <a href="#">About</a>
          <a href="#">Contact</a>
        </div>
      </div>
      <Link to='/cart' className='cart-btn'>
        <img src={cartIcon} alt="cart icon" className='cart-icon'/>
        <div className='cart-items-count'>{cartItemsCount}</div>
      </Link>
    </nav>
    <div className='green-line'/>
  </header>
}

export default Navbar