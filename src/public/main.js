const socket = io()

const pacienteForm = document.querySelector('#pacienteForm')

pacienteForm.addEventListener('submit', e => {
    e.preventDefault()
    console.log('estamos enviando info ', document.querySelector('#idRaza').value)
})

socket.on('ping', () => {
    console.log("escuchado")
    socket.emit('pong')
})