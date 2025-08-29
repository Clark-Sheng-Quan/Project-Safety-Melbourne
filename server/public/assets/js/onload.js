// load and verify whether the token exsist
window.onload = verifyLogin()

function verifyLogin(){
  let token = localStorage.getItem("token")
  if(!token){
    window.location.href='./login.html'
  }
  return token
}

function logout(){
  localStorage.clear()
  window.location.href='./login.html'
}
