document.getElementById("next_step").addEventListener("click", next)


function next(event){

    document.getElementsByClassName("group_2")[0].classList.add('display')
    document.getElementsByClassName("group_2")[0].classList.remove('hide')
    document.getElementsByClassName("group_1")[0].classList.add('hide')
    document.getElementsByClassName("group_1")[0].classList.remove('display')
}

