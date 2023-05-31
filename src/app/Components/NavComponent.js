import React from 'react'

export const NavComponent = () => {
  return (
    <div>
        <nav className="navbar navbar-expand-lg navbar navbar-dark bg-dark">
            <div className="container-fluid">
              <a className="navbar-brand" href="#">Katzen</a>
              <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span className="navbar-toggler-icon"></span>
              </button>
              <div className="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div className="navbar-nav">
                  <a className="nav-link active" aria-current="page" href="#">Inicio</a>
                  <a className="nav-link" href="#">Nuevo Cliente</a>
                  <a className="nav-link" href="#">Nueva Mascota</a>
                  <a className="nav-link disabled" href="#"  aria-disabled="true">Nuevo Expendiente</a>
                </div>
              </div>
            </div>
        </nav>
    </div>

  )
}


