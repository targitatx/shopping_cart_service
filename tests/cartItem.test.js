import React from 'react';
import Enzyme, { shallow } from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';
import App from '../src/js/components/container/App.jsx';
import { exportAllDeclaration } from '@babel/types';

Enzyme.configure({ adapter: new Adapter() })

describe('App', ()=>{
  it('should display total', ()=>{
    const wrapper = shallow(<App />);
    // const text = wrapper.find('div div')
    // const total = wrapper.find('AppContainer');
    // console.log('wrapper>>>', wrapper)
    expect(wrapper.find('#test')).to.have.lengthOf(1);
  })
})