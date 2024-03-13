import "./Navbar.css"
function Navbar() {
  return <header>
    <div className='green-line'/>
    <nav className='navbar'>
      <img src="./coffee-logo.png" alt="coffee logo" className='nav-logo'/>
      <div className="navbar-items">
        <a href="#">Home</a>
        <a href="#">About</a>
        <a href="#">Contact</a>
      </div>
    </nav>
    <div className='green-line'/>
  </header>
}

export default Navbar