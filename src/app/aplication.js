import React, { Component } from 'react';
import { NavComponent } from './Components/NavComponent.js';
import { NewUserComponent}  from './Components/User/NewUserComponent.js';
import NewPetComponent from './Components/Pet/NewPetComponent.js';

class App extends Component {
    render(){   
        return(
           <div>
                 
            <NavComponent />


            <NewPetComponent />

        
           </div>
        )
    }
}

export default App;

