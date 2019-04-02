import React from 'react'
import CartItem from './CartItem.jsx';
import styled from "styled-components";

const List = styled.div`
  max-height: 450px;
  overflow: scroll;
  `

  // background: linear-gradient(to bottom, rgba(251, 251, 251, 1) 0%, rgba(251, 251, 251, 0) 100%);

const ItemList = (props) =>{
  return (
    <List>
      {props.items.map(item => <CartItem changeQuantity={props.changeQuantity} item={item}/>)}
    </List>
  )
}

export default ItemList;