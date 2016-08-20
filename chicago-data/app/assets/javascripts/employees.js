var app = angular.module('myApp', []);

app.controller('myCtrl', function($scope, $http) {
  $http.get("https://data.cityofchicago.org/resource/tt4n-kn4t.json")
  .then(function(response) {
    $scope.employeeData = response.data;
    console.log($scope.employeeData);
  });
});