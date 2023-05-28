import React, {Componet} from 'react';
import {render} from 'react-dom';

class App extends Componet{
    render(){
        retur(
            <h1>Hello world</h1>
        )
    }
}

render(<App/>,document.getElementById('app'));