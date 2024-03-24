import './App.css'
import Footer from "./components/Footer"
import Navbar from "./components/Navbar"
import Menu from "./components/Menu";
import Cart from "./components/Cart";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";



function App() {
  return <div className='main-div'>
    <Router>
      <Navbar />
      <Routes>
        <Route path="/" element={ <Menu/> } />
        <Route path="/cart" element={ <Cart/> }/>
      </Routes>
      <Footer />
    </Router>
  </div>
}
export default App
