let date_time = new Date();

let date = ("0" + date_time.getDate()).slice(-2);

let month = ("0" + (date_time.getMonth() + 1)).slice(-2);

let year = date_time.getFullYear();

let hours = date_time.getHours();

let minutes = date_time.getMinutes();

let seconds = date_time.getSeconds();

const _pathTime = year + month + date + hours + minutes + seconds;

export default _pathTime;