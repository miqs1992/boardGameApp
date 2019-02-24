import React from 'react';
import { Link } from 'react-router-dom';

class LandingPage extends React.Component {
    logoutHandler = () => {
        fetch("/logout", {
            method: 'delete',
            credentials: 'same-origin',
            headers: {
                "X-CSRF-Token": this.getMetaValue("csrf-token")
            }
        }).then(() => {
            window.location.reload()
        })
    };

    getMetaValue = (name) =>{
        const element = document.head.querySelector(`meta[name="${name}"]`);
        return element.getAttribute("content")
    };

    render() {
        return(
            <div>
                <h1>Hello World</h1>
                <button>
                    <Link to="/test">test</Link>
                </button><br/>
                <button onClick={this.logoutHandler}>Log out</button>
            </div>
        )
    }
}

export default LandingPage