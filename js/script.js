// TODO удалить все console.log

$("#autocomplete").autocomplete({
    source: function (request, response) {
        $.ajax({
            url: '/ajax/autocomplete',
            type: 'post',
            dataType: 'json',
            data: {
                maxRows: 20,
                word: request.term
            },
            success: function (data) {
                console.log(data);

                response($.map(data, function (item) {
                    return (item.name);
                }));
            }
        });
    },
    minLength: 3
});

var email_pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;
var login_pattern = /^[a-zA-Z][a-zA-Z0-9-_\.]{2,20}$/s
var warning = 0;

function valid(selector, min, max, pattern, texterror) {

    if ($(selector).val().length == 0) {
        warning++;
        $(selector).after("<div class='warning'>Вы не заполнили поле</div>");
        $(selector).css({
            border: '2px solid #E91E63'
        });
    } else if ($(selector).val().length < min) {
        warning++;
        $(selector).after("<div class='warning'>Не менее " + min + " символов</div>");
        $(selector).css({
            border: '2px solid #E91E63'
        });
    } else if ($(selector).val().length > max) {
        warning++;
        $(selector).after("<div class='warning'>Не более " + max + " символов</div>");
        $(selector).css({
            border: '2px solid #E91E63'
        });
    } else if (pattern !== undefined) {

        if (!pattern.test($(selector).val())) {
            warning++;
            $(selector).after("<div class='warning'>" + texterror + "</div>");
            $(selector).css({
                border: '2px solid #E91E63'
            });
        } else {
            $(selector).css({
                border: '1px solid #222222'
            });
            return $(selector).val();
        }
    } else {
        $(selector).css({
            border: '1px solid #222222'
        });
        return $(selector).val();
    }
}

$(document).on('click', '#auth', function () {
    warning = 0;
    $('.warning').remove();
    $('.response-form').stop(true, true).fadeOut();

    var login = valid('#login', 5, 32, login_pattern, 'Некорректный формат логина');
    var password = valid('#password', 8, 48);

    if (warning == 0) {

        $.ajax({
            url: '/ajax/auth',
            type: 'post',
            dataType: 'json',
            data: {
                login: login,
                password: password
            },
            success: Success,
            beforeSend: Before
        });

        function Success(data) {
            console.log(data);

            if (data[0] == true) {
                document.location = '/';
            } else {
                $('.response-form').text(data[1]);
                $('.response-form').fadeIn();
            }
        }

        function Before() {
            //TODO анимация загрузки
        }
    }
});

$(document).on('click', '#activation', function () {
    warning = 0;
    $('.warning').remove();
    $('.response-form').stop(true, true).fadeOut();
    var code = valid('#code', 4, 4);
    if (warning == 0) {

        $.ajax({
            url: '/ajax/activation',
            type: 'post',
            dataType: 'json',
            data: {
                code: code
            },
            success: Success,
            beforeSend: Before
        });

        function Success(data) {
            console.log(data);

            if (data[0] == true) {
                document.location = '/';
            } else {
                $('.response-form').text(data[1]);
                $('.response-form').fadeIn();
            }
        }

        function Before() {
            //TODO анимация загрузки
        }
    }
});


$(document).on('click', '#likerecord', function () {
    
   var id_record = $(this).attr('id_record');
   var id_group = $(this).attr('id_group');
   
    $.ajax({
        url: '/ajax/likerecord',
        type: 'post',
        dataType: 'html',
        data: {
            id_record: id_record,
            id_group:id_group
        },
        success: Success,
        beforeSend: Before
    });

    function Success(data) {
        console.log(data);
        
    }

    function Before() {
        //TODO анимация загрузки
    }

});


$(document).on('click', '#reg', function () {
    warning = 0;
    $('.warning').remove();
    $('.response-form').stop(true, true).fadeOut();
    var name = valid('#name', 4, 32);
    var surname = valid('#surname', 4, 32);
    var email = valid('#email', 5, 64, email_pattern, 'Некорректный формат электронная почта');
    var login = valid('#login', 5, 32, login_pattern, 'Некорректный формат логина');

    valid('#password', 8, 48);
    valid('#password_confirm', 8, 48);

    if ($('#password').val() !== $('#password_confirm').val()) {
        warning++;
        $('#password').after("<div class='warning'>Пароли не совпадают</div>");
        $('#password').css({
            border: '2px solid #E91E63'
        });
        $('#password_confirm').after("<div class='warning'>Пароли не совпадают</div>");
        $('#password_confirm').css({
            border: '2px solid #E91E63'
        });
    } else {
        $('#password_confirm').css({
            border: '1px solid #222222'
        });
        $('#password').css({
            border: '1px solid #222222'
        });
        var password_confirm = $('#password_confirm').val();
        var password = $('#password').val();
    }

    if (warning == 0) {

        $.ajax({
            url: '/ajax/reg',
            type: 'post',
            dataType: 'json',
            data: {
                name: name,
                surname: surname,
                email: email,
                login: login,
                password: password,
                password_confirm: password_confirm
            },
            success: Success,
            beforeSend: Before
        });

        function Success(data) {
            console.log(data);

            if (data[0] == true) {
                document.location = '/reg/activation';
            } else {
                $('.response-form').text(data[1]);
                $('.response-form').fadeIn();
            }
        }

        function Before() {}
    }
});

$(document).on('click', '.bt-open-record', function () {
    if ($(this).parent().parent().find('.record-bottom').hasClass('opens')) {
        $(this).parent().parent().find('.record-bottom').removeClass("opens");
    } else {
        $(this).parent().parent().find('.record-bottom').addClass("opens");
    }
    var id = $(this).parent().parent().attr('id');
    var target = document.getElementById(id);
    $('html, body').animate({
        scrollTop: $(target).offset().top
    }, 1000);
});