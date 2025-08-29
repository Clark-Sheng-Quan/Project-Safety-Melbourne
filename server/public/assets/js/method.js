/**
   * Log in function
   */
function checkuser(){
    let uname = username.value;
    let upwd = password.value;
    ajax({
        method:'post',
        url:'/user/login',
        data:`uname=${uname}&upwd=${upwd}`,
        success: function(res){
          if(res){
            localStorage.setItem("token", uname)
            sent.innerHTML = 'Welcome user: '+ uname
            sent.classList.add('d-block');
            setTimeout(()=>{
                window.location.href='./index.html'
            },2000)
            }  
            else{   error.innerHTML = "An error has happened"
            error.classList.add('d-block')
            }
        }  
    })
/**
   * sign up function
   */
}
function register(){
    if (unameBool && upwdBool && reupwdBool && emailBool && phoneBool) {
        let $uname = uname.value;
        let $upwd = upwd.value;
        let $email= email.value
        let $phone = phone.value 

        ajax({
            method:'post',
            url:'/user/reg',
            data:`username=${$uname}&password=${$upwd}&email=${$email}&phone=${$phone}`,
            success: function(res){
              if(res){
                localStorage.setItem("token", uname)
                sent.innerHTML = 'Sign up successed'
                sent.classList.add('d-block');
                setTimeout(()=>{
                    window.location.href='./login.html'
                },2000)
            }  
                else{   error.innerHTML = "An error has happened"
                error.classList.add('d-block')
                }
            }  
        })
    }else{
        error.innerHTML = "Incorrent register format"
        error.classList.add('d-block')
    }
}
/**
   * Send message function in contact
   */
function sendMessage(){
    
    let $mname = mname.value;
    let $emergency = emergency.value;
    let $subject= subject.value
    let $message = message.value 
    if(sent.innerHTML){
        sent.classList.remove('d-block');
        error.classList.add('d-block');
        error.innerHTML = "Please don't submit again "
        return;
    }
    loading.classList.add('d-block');
    ajax({
        method:'post',
        url:'/user/contact',
        data:`name=${$mname}&emergency=${$emergency}&subject=${$subject}&message=${$message}`,
        success: function(res){
            setTimeout(()=>{
            loading.classList.remove('d-block');
            if(res){
                sent.innerHTML = "Your message has been sent. Thank you!"
                sent.classList.add('d-block');
            } else{
                error.innerHTML = "An error has happened, sending message failed"
                error.classList.add('d-block');
                }
            },2000)
        }  
    })
}