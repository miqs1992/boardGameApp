import React from 'react';
import { Link } from 'react-router-dom';

class LandingPage extends React.Component {
    render() {
        return(
            <div>
                <h1>Hello World</h1>
                <Link to="/test">test</Link>
                <a href="/login">go to login</a>
            </div>
        )
    }
}

export default LandingPage