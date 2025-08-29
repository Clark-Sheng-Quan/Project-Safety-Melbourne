const callback = require('./callback');
// jest.setTimeout(20000)
test('Testing Call Back With Error', (done) => {

    callback('http://localhost:8080/user/error', (err, data) => {
        
        expect(data).toBeUndefined();
        expect(err).toBeDefined();
        done();
    })
});

test('Server Test, Should return data of test', (done) => {

    callback('http://localhost:8080/test', (err, data) => {
        
        expect(data).toStrictEqual('test');
        expect(err).toBeNull()
        done();
    })
});

test('Crime Test, should return all the crime data', (done) => {

    callback('http://localhost:8080/user/crime', (err, data) => {
        expect(data).not.toStrictEqual('{"code":500,"msg":"server error"}')       
        expect(data.length).toBeGreaterThan(50)
        expect(err).toBeNull()
        done();
    })
});

test('Suburb Test, should return all the suburb data', (done) => {

    callback('http://localhost:8080/user/suburb', (err, data) => {
        expect(data).not.toStrictEqual('{"code":500,"msg":"server error"}')       
        expect(data.length).toBeGreaterThan(50)
        expect(err).toBeNull()
        done();
    })
});

test('Indicator Test, should return all the Indicator data with type safety', (done) => {

    callback('http://localhost:8080/user/indicatorTest?type=safety', (err, data) => {
        expect(data).not.toStrictEqual('{"code":500,"msg":"server error"}')       
        expect(data.length).toBeGreaterThan(50)
        expect(err).toBeNull()
        done();
    })
});

test('Contact Test, by give random input, should normally return all contact data', (done) => {

    callback('http://localhost:8080/user/contactTest?random=input', (err, data) => {
        expect(data).not.toStrictEqual('{"code":500,"msg":"server error"}')       
        expect(data.length).toBeGreaterThan(50)
        expect(err).toBeNull()
        done();
    })
});

test('Indicator Test, should return user data with uid 1', (done) => {

    callback('http://localhost:8080/user/userTest?uid=1', (err, data) => {
        expect(data).not.toStrictEqual('{"code":500,"msg":"server error"}')       
        expect(data.length).toBeGreaterThan(50)
        expect(err).toBeNull()
        done();
    })
});