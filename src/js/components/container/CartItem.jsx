import React from "react";
import commaNumber from "comma-number"
import styled from "styled-components"

const Span = styled.span`
  float: right;
`

const Price = styled.span`
  font-weight: bold;
  font-size: 19px;
  line-height: 1;
`

const Each = styled.span`
  line-height: 1.5285;
  font-size: 16px;
`

const Contents = styled.div`
  line-height: 1.4285;
  margin-left: 90px;
  font-size: 16px;
`

const UnderlineMe = styled.span`
  &:hover {
    text-decoration: underline;
    select {
      text-decoration: underline;
    }
  }
  select {
    border-width: 0px;
}
`

const Item = styled.div`
  margin-top: 8px;

  border: 1px solid rgb(214, 214, 214);
  border-radius: 5px;
  background-color: rgb(255, 255, 255);
  color: rgb(51, 51, 51);
  overflow: hidden;
  flex-wrap: wrap;
  width: 100%;
  font-size: 14px !important;
  list-style: none outside none;

  padding-left: 10px;
  padding-right: 10px;
  padding-top: 10px;
  padding-bottom: 10px;

  right: 5px;
  height: 100%;
  max-height: 100%;
  white-space: normal;
  height: auto;
  min-height: auto;
  clip: auto;
  z-index: 1041;
  visibility: visible;
  background-color: initial;
  outline: 0px;
`

class CartItem extends React.Component{
  constructor(props){
    super(props)
    this.state = {
      quantity: 0
    }
  }

  render(){
    let item = this.props.item;
    let quantity = item.quantity;
    return(
      <Item>
        <img src={item.image_url} height="75 px" width="75px" style={{float:"left"}}/>
        <Contents>
          <div>
            <Price> ${commaNumber(item.price)} </Price><Each> {quantity > 1 ? "each" : null} </Each>
            <Span onClick={()=>{this.props.changeQuantity(item.sku, 0)}}><img height="10px" src="https://bit.ly/2UiCh2k"></img></Span>
          </div>
          <UnderlineMe onClick={()=>{window.State=item.sku}}>{this.props.item.title}</UnderlineMe>
          <div>
              <form onChange={(e)=>{console.log('target.value: ', e.target.value); this.props.changeQuantity(item.sku, Number(e.target.value))}}>
            <UnderlineMe>
                <select value={item.quantity} style={{fontWeight: "bold", fontSize: "14px"}}>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                </select><span style={{fontSize: "10px"}}>qty</span></UnderlineMe> | <img height="15 px" width="15 px" src={item.image_url}/>
              </form>
          </div>
        </Contents>
      </Item>
    )
  }

}

export default CartItem;