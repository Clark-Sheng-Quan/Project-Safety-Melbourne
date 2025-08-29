//Method to build up the server
const express = require('express');
//import router
const userRouter = require('./routes/user');

const app = express();

const port = 8080;

app.use(express.static('public'));

app.use(express.urlencoded({
    extended: false
}))


app.use('/user', userRouter);

app.use((err, req, res, next) => {
    res.send({
        code: 500,
        msg: 'server error'
    });
})

app.listen(port, () => console.log(`port: ${port}!`));

/*--------------------------------------------------------------
# Test
--------------------------------------------------------------*/

app.get('/test', (req, res) => {
    res.send("test");
});