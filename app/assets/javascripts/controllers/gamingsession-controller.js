app.controller('GamingsessionController', function($scope, $routeParams, $http){

$scope.currentUser = currentUser

$http.get('/gamingsessions.json').success(function(data){
  $scope.gamingsessions = data;
});

$http.get('/gamingsessions/' + $routeParams.id + '.json').success(function(data){
  console.log(data)
  $scope.gamingsession = data;
});

$scope.addGamingsession = function(){
  $http.post('/gamingsessions.json', {gamingsession: $scope.newGamingsession}).success(function(gamingsession){
    console.log(gamingsession)
    $scope.gamingsessions.push(gamingsession);
    $scope.newGamingsession = false;
    $scope.gamingsessionForm.$setPristine();
  })
}

});