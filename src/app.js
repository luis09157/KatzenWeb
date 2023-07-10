import express from "express";
import morgan from "morgan";
import bodyParser from 'body-parser';

const app = express();
import http from "http";
import { join } from "path";
import __dirname from './dir.js'
const server = http.createServer(app);

import { Server } from "socket.io";
const io = new Server(server);




app.set("views", join(__dirname, "views"));
app.set("view engine", "ejs");
app.use(morgan("dev"));
app.use(express.json());
app.use(bodyParser.json({
  limit: '20mb'
}));

app.use(bodyParser.urlencoded({
  limit: '20mb',
  parameterLimit: 100000,
  extended: true 
}));



// Routes
import indexRoutes from "./routes/index.js";
import loginRoutes from "./routes/login.routes.js";
import petsRoutes from "./routes/pets.routes.js";
import campingRoutes from "./routes/camping.routes.js";
import userRoutes from "./routes/user.routes.js";
import spinnerRoutes from "./routes/spiners.routes.js";
import clientsRoutes from "./routes/client.routes.js";

// routes
app.use(indexRoutes)
app.use(petsRoutes)
app.use(loginRoutes)
app.use(campingRoutes)
app.use(userRoutes)
app.use(spinnerRoutes)
app.use(clientsRoutes)

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
