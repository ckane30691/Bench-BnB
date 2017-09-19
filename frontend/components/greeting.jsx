import React from 'react';
import Link from 'react-router-dom';

class Greeting extends React.Component {

  render() {
    let text = "Sign Up";
    let path = '/signup';
    let greeting = "";
    if (this.props.currentUser) {
      text = "Login";
      path = "/login";
      greeting = `Hello, ${this.props.currentUser.username}`;
    }
    return(
      <div>
        <h3>{greeting}</h3>
         <Link to={path} >{text}</Link>
      </div>
    );
  }
}

export default Greeting;
