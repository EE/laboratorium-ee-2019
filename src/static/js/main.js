/* Write your ES6 here. Feel free to use imports/exports. */
window.addEventListener('load', function () {
    Vue.options.delimiters = ['[[', ']]'];
     var app = new Vue({
         el: '#app',
         data: {
             message: 'Hello, world!'
         }
     });
})
