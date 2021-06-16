module.exports = {
    "env": {
        "browser": false,
        "es6": true
    },
    "extends": [ "plugin:cypress/recommended"],
    "globals": {
        "Atomics": "readonly",
        "SharedArrayBuffer": "readonly"
    },
    "parserOptions": {
        "ecmaVersion": 2018,
        "sourceType": "module"
    },
    "rules": {
    }
};
