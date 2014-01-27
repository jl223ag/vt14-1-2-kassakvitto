window.onload = function () {

    var button = document.querySelector("#CalcDiscount");

    window.onkeypress = function (e) {
        e = e || event;

        if (e.keyCode === 13) {
            e.preventDefault();
            button.click();
        }
    };
};
