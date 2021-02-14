var setLogoActive = function(event) {
    event.classList.add("active");
}
var setLogoInactive = function(){
    document.querySelectorAll('.brand').forEach(item => {
        item.classList.remove("active");
    })
}
var setBrandTextInactive = function (){
    document.querySelectorAll('.brand-text').forEach(item => {
        item.classList.remove("active");
    })
}
var setBrandTextActive = function (item){
    document.getElementsByClassName(item.classList[1])[0].classList.add('active')
}
document.querySelectorAll('.brand').forEach(item => {
    item.addEventListener('click', event => {
        setLogoInactive()
        setLogoActive(item)
        setBrandTextInactive()
        setBrandTextActive(item)
    })
})

