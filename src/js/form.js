var app = angular.module('myApp');
app.controller('form', function($scope,$rootScope) {

  $scope.submit = function() {
    $obj={name:$scope.name,date:$scope.date,number:$scope.number,email:$scope.email,address:$scope.address};
    $rootScope.customers.push($obj);
  };
});