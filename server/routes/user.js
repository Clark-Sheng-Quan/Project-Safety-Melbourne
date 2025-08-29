//router response to the database request events
const express = require('express');
//import pool
const pool = require('../pool');
const router = express.Router();
//events
router.post('/reg', (req, res, next) => {
    let obj = req.body;
    console.log(obj);

    let sql = 'INSERT INTO users SET ?';
    pool.query(sql, [obj], (err, result) => {
        console.log(result);
        if (err) {
            next(err);
            return;
        }
        
        result.affectedRows > 0 ? res.send('1') : res.send('0');
    })
})

router.post('/login', (req, res, next) => {
    let obj = req.body;
    console.log(obj);
    let sql = 'SELECT  * FROM  users WHERE username = ? AND password = ? ';
    pool.query(sql, [obj.uname, obj.upwd], (err, result) => {
        console.log(result);
        if (err) {
            next(err);
            return;
        } 
        result.length > 0 ? res.send(result) : res.send('0');
    });
})

router.get('/query', (req, res, next) => {
    let obj = req.query;

    let sql = 'SELECT * FROM users WHERE username = ?';
    pool.query(sql, [obj.username], (err, result) => {
        if (err) {
            next(err);
            return;
        }
        result.length > 0 ? res.send('1') : res.send('0');

    })
})

router.post('/contact', (req, res, next) => {
    let obj = req.body;
    console.log(obj);
    
    let sql = 'INSERT INTO contact SET ?';
    pool.query(sql, [obj], (err, result) => {
        console.log();
        if (err) {
            next(err);
            return;
        }
        console.log(result.affectedRows);
        result.affectedRows > 0 ? res.send('1') : res.send('0');
    })
})

router.get('/crime', (req, res, next) => {
    
    let sql = 'SELECT * FROM crime WHERE 1';
    pool.query(sql,  (err, result) => {
        if (err) {
            next(err);
            return;
        }
        result.length > 0 ? res.send(result) : res.send('0');

    })
})

router.get('/suburb', (req, res, next) => {
    
    let sql = 'SELECT * FROM suburbs WHERE 1';
    pool.query(sql,  (err, result) => {
        if (err) {
            next(err);
            return;
        }
        result.length > 0 ? res.send(result) : res.send('0');

    })
})

router.post('/indicator', (req, res, next) => {
    let obj = req.body;
    
    let sql = 'SELECT * FROM indicators WHERE ?';
    pool.query(sql, obj, (err, result) => {
        if (err) {
            next(err);
            return;
        }
        
        result.length > 0 ? res.send(result) : res.send('0');

    })
})
module.exports = router;

/*--------------------------------------------------------------
# Test
--------------------------------------------------------------*/

router.get('/indicatorTest', (req, res, next) => {
    let obj = req.query;
    let sql = 'SELECT * FROM indicators WHERE TYPE = ?';
    pool.query(sql, obj.type, (err, result) => {
        if (err) {
            next(err);
            return;
        }
        result.length > 0 ? res.send(result) : res.send('0');
    })
})

router.get('/contactTest', (req, res, next) => {

    let sql = 'SELECT * FROM contact WHERE 1';
    pool.query(sql,  (err, result) => {
        if (err) {
            next(err);
            return;
        }
        result.length > 0 ? res.send(result) : res.send('0');
    })
})

router.get('/userTest', (req, res, next) => {
    let obj = req.query;
    let sql = 'SELECT * FROM users WHERE uid = ?';
    pool.query(sql, obj.uid, (err, result) => {
        if (err) {
            next(err);
            return;
        }
        result.length > 0 ? res.send(result) : res.send('0');
    })
})