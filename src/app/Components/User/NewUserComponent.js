import React from 'react'

export const NewUserComponent = () => {
  return (
    <div className='container'>

        <form>
            <div className="mb-3">
                <label for="exampleFormControlInput1" className="form-label">Nombre Usuario</label>
                <input type='text'  className="form-control" placeholder='Nombre Usuario'></input>
            </div>      
            
            <div className="mb-3">
                <label for="exampleFormControlInput1" className="form-label">Contraseña</label>
                <input type='text'  className="form-control" placeholder='Contraseña'></input>
            </div>  
            <div className="mb-3">
                <label for="exampleFormControlInput1" className="form-label">Nombre</label>
                <input type='text'  className="form-control" placeholder='Nombre...'></input>
            </div>  
            <div className="mb-3">
                <label for="exampleFormControlInput1" className="form-label">Apellido Paterno</label>
                <input type='text'  className="form-control" placeholder='Apellido Paterno'></input>
            </div>  
            <div className="mb-3">
                <label for="exampleFormControlInput1" className="form-label">Apellido Materno</label>
                <input type='text'  className="form-control" placeholder='Apellido Materno'></input>
            </div>  
            <div className="mb-3">
                <label for="exampleFormControlInput1" className="form-label">Telefono</label>
                <input type='text'  className="form-control" placeholder='Telefono'></input>
            </div>  
            <div className="mb-3">
                <label for="exampleFormControlTextarea1" className="form-label">Direccion</label>
                <textarea className="form-control" placeholder='Direccion' id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>
            <div className="mb-3">
                <label for="exampleFormControlInput1" className="form-label">Edad</label>
                <input type='text'  className="form-control" placeholder='Edad'></input>
            </div>  
            <div className="mb-3">
                <label for="exampleFormControlInput1" className="form-label">Correo Electronico</label>
                <input type='text'  className="form-control" placeholder='Correo Electroonico'></input>
            </div>  

            <button type="submit" className="btn btn-primary">Submit</button>
        </form>
       
    </div>
  )
}
 
