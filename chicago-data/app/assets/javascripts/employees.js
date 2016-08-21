var app = angular.module('myApp', []);

app.controller('myCtrl', function($scope, $http) {
  $http.get("https://data.cityofchicago.org/resource/tt4n-kn4t.json")
  .then(function(response) {
    $scope.employeeData = response.data;
  });

  $scope.sorterFunc = function(employee){
    return parseInt(employee.employee_annual_salary);
  };

  $scope.showTitle = function(employee){
    $scope.showEmployeeTitle = !$scope.showEmployeeTitle;

  };
});