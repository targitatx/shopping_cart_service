import React, { Component } from "react";
import Button from 'react-bootstrap/Button'
import Modal from 'react-bootstrap/Modal'
import App from './App.jsx'
import styled from 'styled-components'

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

const ButtonStyled = styled.button`
  max-width: 150px;
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

class Popup extends Component {
  constructor(props, context) {
    super(props, context);

    this.handleShow = this.handleShow.bind(this);
    this.handleClose = this.handleClose.bind(this);

    this.state = {
      show: false,
      currentSku: null
    };
  }

  componentDidMount(){
    window.addEventListener('changeItem', (event)=>{this.setState({currentSku: event.detail})});
  }

  handleClose() {
    this.setState({ show: false });
  }

  handleShow() {
    this.setState({ show: true });
  }

  render() {
    return (
      <>
        <ButtonStyled variant="primary" onClick={this.handleShow}>
          Ship It
        </ButtonStyled>

        <Modal style={{width: "386px"}}
          show={this.state.show}
          onHide={this.handleClose}>

          <App handleClose={this.handleClose} currentSku={this.state.currentSku}/>
        </Modal>
      </>
    );
  }
}

export default Popup;