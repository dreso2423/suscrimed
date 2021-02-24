var cart_section = document.querySelectorAll('.cart_section')[0]
var price_section = document.querySelectorAll('.price_section')[0]

var arrow_switch_to_checkout = document.querySelectorAll('.switch_to_checkout')[0]
var arrow_switch_to_items_list = document.querySelectorAll('.switch_to_items_list')[0]

resizer()

document.querySelectorAll('.switch_to_checkout').forEach(item => {
    item.addEventListener('click', event => {
        cart_section.classList.add('inactive')
        price_section.classList.remove('inactive')

        arrow_switch_to_items_list.classList.remove('inactive')
        arrow_switch_to_checkout.classList.add('inactive')
    })
})

document.querySelectorAll('.switch_to_items_list').forEach(item => {
    item.addEventListener('click', event => {
        cart_section.classList.remove('inactive')
        price_section.classList.add('inactive')

        arrow_switch_to_items_list.classList.add('inactive')
        arrow_switch_to_checkout.classList.remove('inactive')
    })
})
window.addEventListener('resize', function(size){
    resizer()
});

function resizer(){
    if(window.innerWidth < 750 ){
        price_section.classList.add('inactive')
        arrow_switch_to_items_list.classList.add('inactive')
        arrow_switch_to_checkout.classList.remove('inactive')

    }else{
        price_section.classList.remove('inactive')
        cart_section.classList.remove('inactive')
        arrow_switch_to_checkout.classList.add('inactive')
        arrow_switch_to_items_list.classList.remove('inactive')
    }
}
