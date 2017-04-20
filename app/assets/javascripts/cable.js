// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the rails generate channel command.
//
//= require action_cable
//= require_self

(function() {
  this.App || (this.App = {});

  App.cable = ActionCable.createConsumer();

}).call(this);

$(document).ready(function () {
    $('.forgot-pass').click(function(event) {
        $(".pr-wrap").toggleClass("show-pass-reset");
    });

    $('.pass-reset-submit').click(function(event) {
        $(".pr-wrap").removeClass("show-pass-reset");
    });
    $("#new_user").validate({
        rules: {
            'user[email]': "required",
            'user[password]': {
                required: true,
                minlength: 6
            }
        },
        messages: {
            'user[email]': "Please enter your email",

            'user[password]': {
                required: "Please provide a password",
                minlength: "Your password must be at least 6 characters long"
            }
        }
    });
});