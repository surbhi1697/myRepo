var app = angular.module('myApp');
app.controller('management', function($scope,$rootScope) {
  
  $scope.objs=$rootScope.customers;
  if($scope.objs==null)
  {
    $rootScope.customers=[];
  }
 function edit(obj){

  }
});