var app = angular.module("myApp", ["ngRoute"]);
app.config(function($routeProvider) {
  $routeProvider
  .when("/", {
    templateUrl : "src/management.html",
  })
  .when("/form", {
    templateUrl : "src/form.html"
    });
});

