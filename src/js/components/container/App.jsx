import React, { Component } from "react";
import Axios from "axios"
import commaNumber from "comma-number"
import styled from "styled-components"
import ItemList from "./itemList.jsx"

const AppContainer = styled.div`
  width: 350px;
  margin-left: 18px;
  margin-right: 18px;
`

const Total = styled.h2 `
  font-size: 23px;
  text-align: center;
  padding-top: 9px;
  padding-bottom: 13px;
  border-bottom: 1px solid rgb(214, 214, 214);
  `

const Button = styled.button`
  max-width: 350px;
  margin-top: 8px;

  position: relative;
  font-weight: normal;
  text-align: center;
  vertical-align: middle;
  touch-action: manipulation;
  cursor: pointer;
  background-image: none;
  white-space: nowrap;
  user-select: none;
  display: block;
  flex-basis: 100%;
  width: 100%;
  font-size: 19px;
  line-height: 1.42857;
  color: rgb(255, 255, 255);
  background-color: rgb(204, 0, 0);
  border-width: 1px;
  border-style: solid;
  padding: 12px 20px;
  border-radius: 4px;
  border-color: rgb(204, 0, 0);
`

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      inCart: [],
      cartTotal: 0
    }
  }

  componentDidMount(){
    this.getCartItems();
  }

  getCartItems(e){
    Axios('ec2-3-19-70-44.us-east-2.compute.amazonaws.com:4000/cart')
    .then((data)=>{
      console.log('Axios get successful: ', data)
      this.setState({
        inCart: data.data.rows,
      });
      this.updateCartTotal();
      console.log('this.state: ', this.state)
    })
    .catch((err)=>{console.log('Axios get failed: ', err)})
  }

  changeQuantity(sku, quantity){
    console.log('sku and quantity: ', sku, quantity)
    Axios
    .post('ec2-3-19-70-44.us-east-2.compute.amazonaws.com:4000/cart',{"sku": sku, "quantity": quantity})
    .then(()=>{
      this.getCartItems();
    })
    .catch(()=>{console.log('Axios post request failed')})
  }

  updateCartTotal(){
    let sum = 0;
    for (var i=0; i<this.state.inCart.length; i++){
      sum += (Number(this.state.inCart[i].price) * this.state.inCart[i].quantity)
    }
    this.setState({
      cartTotal: sum
    })
  }
  
  render(){
    window.Test = "hello"
    return (
      <AppContainer>
        <Total id="total"> <b>cart total: </b>${commaNumber(this.state.cartTotal)}.00 </Total>
        <ItemList items={this.state.inCart} changeQuantity={this.changeQuantity.bind(this)}/>
        <Button onClick={()=>{this.changeQuantity(window.State, 1)}}>view cart + check out</Button>
      </AppContainer>
    )
  }
}

export default App;