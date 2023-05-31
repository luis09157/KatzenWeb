import React, {useState} from 'react'


const NewPetComponent = () => {

const [data, setData] = useState({
    paciente: '',
    cliente: ''
});

const handleInputChange = (e) => {      
    const {name, value} = e.target;
    setData({...setData,   [name]:value });   
}

const handleSubmitEvent = (e) => {
    e.preventDefault();
    console.log(data);
}

  return (
    <div className='container'>         
        <form onSubmit={handleSubmitEvent}>
        <div className="mb-3">
                    <label className="form-label">Nombre</label>
                    <input type="text"  className="form-control" onChange={handleInputChange}  name='paciente' value={data.paciente}   placeholder="Nombre Mascota..." />
                  </div>
        
        
                  <div className="mb-3">
                    <label className="form-label">Especie</label>
                    <select className="form-select" >
                        <option selected>Selecciona una especie...</option>
                        <option value="1">Canino</option>
                        <option value="2">Felino</option>
                      </select> 
                  </div>  
                  
                  <div className="mb-3">
                    <label className="form-label">Raza</label>
                    <select className="form-select" >
                        <option selected>Selecciona una raza...</option>
                        <option value="1">Labrador</option>
                        <option value="2">Chihuahua</option>
                      </select>
                  </div>
        
                  <div className="mb-3">
                    <label className="form-label">Edad</label>
                    <input type="text" className="form-control" id="ageRegister" placeholder="Edad..." />
                  </div>
        
                  <div className="mb-3">
                    <label className="form-label">Peso</label>
                    <input type="text" className="form-control" id="weightRegister" placeholder="Peso Mascota..." />
                  </div>
        
                  <div className="mb-3">
                    <label className="form-label">Nombre Propietario</label>
                    <input type="text" name='cliente' className="form-control"  placeholder="Nombre Propietario..." />
                  </div>
        
                  <div className="mb-3">
                    <label className="form-label">Telefono</label>
                    <input type="number" className="form-control" id="telephoneRegister" placeholder="Telefono..." />
                  </div>
        
                  <div className="mb-3">
                    <label  className="form-label">Direccion</label>
                    <textarea className="form-control" id="adressRegister" rows="3" placeholder="Zinc #318 Col. Los Cristales, Guadalupe NL."></textarea>
                  </div>
            <button type="submit" className="btn btn-primary">Submit</button>
        </form>
    </div>
  )
}

export default NewPetComponent
