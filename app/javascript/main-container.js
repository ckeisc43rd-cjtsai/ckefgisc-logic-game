resizemenu_container();

$(window).on('load resize', function() {
    resizemenu_container();
});

function resizemenu_container() {
    var menu_container = $('#main-container');

    var menu_containerWidth = menu_container.width();
    menu_container.width(window.innerWidth);
    menu_container.height(window.innerHeight);
    if(menu_container.height() < menu_containerWidth * 9/16) {
        menu_container.width(menu_container.height() * 16/9);
        $('.menu-buttons button').css("font-size", "8vh");
        $('#news').css("font-size", "6vh");
        $('.statustext').css("font-size", "2.8vh");
    } else if(menu_containerWidth < menu_container.height() * 16/9) {
        menu_container.height(menu_containerWidth * 9/16);
        $('.menu-buttons button').css("font-size", "4vw");
        $('#news').css("font-size", "3vw");
        $('.statustext').css("font-size", "1.5vw");
    }
    menu_container.css({
        top: '50%',
        left: '50%',
        transform: 'translate(-50%, -50%)'
    });
}