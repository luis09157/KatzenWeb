import express from "express";
const app = express();
import http from "http";
import { join } from "path";
import __dirname from './dir.js'
const server = http.createServer(app);

import { Server } from "socket.io";
const io = new Server(server);



app.set("views", join(__dirname, "views"));
app.set("view engine", "ejs");

// Routes
import indexRoutes from "./routes/index.js";
import loginRoutes from "./routes/login.routes.js";
import petsRoutes from "./routes/pets.routes.js";

// routes
app.use(indexRoutes)
app.use(petsRoutes)
app.use(loginRoutes)

/*
app.get('/', (req, res) => {
  res.sendFile(__dirname + '/index.html');
});



io.on('connection', (socket) => {
  console.log('a user connected: ' + socket.id);
  socket.emit('ping')

    socket.on('pong', () => {
        console.log("pong")
    })

});

*/
app.use(express.static(join(__dirname, "public")));

export default server;
