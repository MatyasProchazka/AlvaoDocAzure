
var $searchButton = $('.page_header_mobile_control_search');
var $menuButton = $('.page_header_mobile_control_menu');
var $searchWrapper = $('.page_header_search');
var $headerWrapper = $('.page_header');
var $bodyContent = $('.body-content');
var $contentWrapper = $("#Content");

$searchButton.on('click', function (e) {
    $headerWrapper.addClass('search-open');
    closeMenu();
    var $searchInput = $searchWrapper.find('input');
    $searchInput.focus();
});

$searchWrapper.on('blur','input', function (e) {
    if ($(e.currentTarget).val().length === 0) {
        $headerWrapper.removeClass('search-open');
    }
});

$menuButton.on('click', function (e) {
    $bodyContent.toggleClass('menu-open');
});

$contentWrapper.on('click', function (e) {
    closeMenu();
});

$(window).on('resize', function (e) {
    if ($(window).width() > 768) {
        $headerWrapper.removeClass('search-open');
        closeMenu();
    }
});

function closeMenu() {
    $bodyContent.removeClass('menu-open');
}