/**
   * Change the more bar to each suburb's name
   */
function changeMore() {
    const more = document.getElementById("zoom")
    const active = document.querySelector(".flash .active")
    more.innerHTML = active.innerHTML
    if(active.innerHTML == 'Kensington and Flemington'){
        more.innerHTML = 'Kensington'
    }else if(active.innerHTML == 'South Yarra - west'){
        more.innerHTML = 'South Yarra'
    }
    
}

changeMore()


