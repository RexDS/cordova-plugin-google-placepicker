var exec = require("cordova/exec");

module.exports = {
    pickPlace: function(place, success) {
        exec(success, null, "GooglePlacePicker", "pickPlace", [place]);
    }
};
