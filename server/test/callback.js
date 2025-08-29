var rp = require('request-promise');

module.exports = (url, callback) => {
    if(url && callback){
        rp(url).then(data => {            
            callback(null, data);
        }).catch(err => callback(err))
    }
}