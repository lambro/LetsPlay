app.controller('GamingsessionController', function($scope, $routeParams, $http){

$scope.currentUser = currentUser

$http.get('/gamingsessions.json').success(function(data){
  $scope.gamingsessions = data;
  console.log(data);
});

$http.get('/gamingsessions/' + $routeParams.id + '.json').success(function(data){
  console.log(data)
  $scope.gamingsession = data;
});

$scope.addGamingsession = function(){
  console.log("add gaming session function being called");
  $http.post('/gamingsessions.json', {gamingsession: $scope.newGamingsession}).success(function(gamingsession){
    $scope.gamingsessions.push(gamingsession);
    $scope.newGamingsession = false;
    $scope.gamingsessionForm.$setPristine();
  })
}

$scope.closeSession = function(session){
  // console.log(session)
  $http.put('/gamingsessions/' + session + '.json', {gamingsession: {active: false }}).success(function(data){
    console.log(data)
    $http.get('/gamingsessions/' + session + '.json').success(function(data){
      $scope.gamingsession = data;
    })
  })
}

});