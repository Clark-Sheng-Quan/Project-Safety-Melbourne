function ajax(option){
    
    let xhr = new XMLHttpRequest();
    
    xhr.onreadystatechange = () => {
        console.log(xhr.readyState, xhr.status);
        if (xhr.readyState == 4 && xhr.status == 200) {
            
            let res = JSON.parse(xhr.responseText)
            if(!res){
                error.innerHTML = "Incorrect Username or Passward"
                error.classList.add('d-block')
                return;
            }else{
                
                option.success(res)
            }
        }
    }
    // post method, send the request data
    if(option.method == 'post'){
        
        xhr.open(option.method,option.url)
        xhr.setRequestHeader('content-type','application/x-www-form-urlencoded')
        xhr.send(option.data)
    
    }else if(option.method == 'get'){
    // get method, dont send anything    
        xhr.open(option.method,option.url)
        xhr.send()
    }
}
