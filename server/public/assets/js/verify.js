let unameBool = false;
let upwdBool = false;
let reupwdBool = false;
let emailBool = false;
let phoneBool = false;
// verify all the conditions in sign up options

if (document.getElementById('uname')){
    uname.onfocus = function(){
        Suname.innerHTML = 'Use 6-20 characters'
        unameBool = false
    }
    uname.onblur = function(){
        var $uname = uname.value
        if (!$uname.length){
            Suname.innerHTML = 'Enter a username'
        }else if($uname.length>=6 && $uname.length<=20){
            let xhr = new XMLHttpRequest();

            xhr.onreadystatechange = () => {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    if (xhr.responseText == 1) {
                        Suname.innerHTML = 'That username is taken, Try another';
                    } else if (xhr.responseText == 0) {
                        Suname.innerHTML = 'username is available';
                        unameBool = true
                    }
                }
            }

            xhr.open('get', `/user/query?username=${$uname}`);

            xhr.send()
            
        }else{
            Suname.innerHTML = 'Incorret format'
        }
    }
}

if (document.getElementById('upwd')) {
    upwd.onfocus = function () {
        upwdMsg.innerHTML = 'Use 6-10 characters';
    }

    upwd.onblur = function () {
        var $upwd = upwd.value;
        if ($upwd.length == 0) {
            upwdMsg.innerHTML = 'Enter a password';
            upwdBool = false;
        } else if ($upwd.length >= 6 && $upwd.length <= 10) {
            upwdMsg.innerHTML = 'Corret format';
            upwdBool = true;
        } else {
            upwdMsg.innerHTML = 'Incorret format';
            upwdBool = false;
        }
    }
}

if (document.getElementById('reupwd')) {
    reupwd.onfocus = function () {
        reupwdMsg.innerHTML = 'Confirm the password';
    }

    reupwd.onblur = function () {
        var $upwd = upwd.value;
        var $reupwd = reupwd.value;
        if ($upwd.length == 0) {
            reupwdMsg.innerHTML = 'Enter a password';
            reupwdBool = false;
        }
        else if ($reupwd == $upwd) {
            reupwdMsg.innerHTML = 'Those password matched';
            reupwdBool = true;
        } else {
            reupwdMsg.innerHTML = 'Those passwords did not match';
            reupwdBool = false;
        }
    }
}

if (document.getElementById('email')){
    email.onfocus = function(){
        Semail.innerHTML = 'Use a 6-30 characters email'
        emailBool = false
    }
    email.onblur = function(){
        var $email = email.value
        var epattern = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/
        if (!$email.length){
            Semail.innerHTML = 'Enter an email'
        }else if($email.length>=6 && $email.length<=30 && epattern.test($email)){
            Semail.innerHTML = 'Corret format'
            emailBool = true
        }else{
            Semail.innerHTML = 'Incorret format'
        }
    }
}

if (document.getElementById('phone')){
    phone.onfocus = function(){
        Sphone.innerHTML = 'Use a 8-12 number tel'
        phoneBool = false
    }
    phone.onblur = function(){
        var $phone = phone.value
        var pattern = /\s*(\+61|61|061)?\s*[^\d\(]?\s*(\(?([0-8][2-8]{0,1})\)?\s*[\D]?\s*([0-9]{4})\s*[\D]?\s*([0-9]{4}))(?:\D{0,16}(\d{0,8}))?/
        if (!$phone.length){
            Sphone.innerHTML = 'Enter a tel number'
        }else if($phone.length>=6 && $phone.length<=10 && pattern.test($phone)){
            Sphone.innerHTML = 'Corret format'
            phoneBool = true
        }else{
            Sphone.innerHTML = 'Incorret format'
        }
    }
}