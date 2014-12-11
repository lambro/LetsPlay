app.controller('GamingsessionController', ['$scope', '$routeParams', '$http', function($scope, $routeParams, $http){

$scope.currentUser = currentUser

$scope.map = { center: { latitude: 45, longitude: -73 }, zoom: 8 };

$http.get('/gamingsessions.json').success(function(data){
  $scope.gamingsessions = data;
});

$http.get('/consoles.json').success(function(data){
  $scope.consoles = data;
});

$http.get('/users.json').success(function(data){
  $scope.users = data;
  console.log(data);
});

$http.get('/gamingsessions/' + $routeParams.id + '.json').success(function(data){

  $scope.gamingsession = data;
});

$http.get('/user_sessions.json').success(function(data){
  $scope.user_sessions = data;
  $scope.mysession = data[0]
});

$scope.addGamingsession = function(){
  // console.log("add gaming session function being called");
  $http.post('/gamingsessions.json', {gamingsessionwithuser: $scope.newGamingsession}).success(function(gamingsession){
    $scope.gamingsessions.push(gamingsession);
    $scope.newGamingsession = false;
    $scope.gamingsessionForm.$setPristine();
  })
}



$scope.acceptSession = function(session){
  console.log(session)
}

$scope.closeSession = function(session){
  $http.put('/gamingsessions/' + session + '.json', {gamingsession: {active: false }}).success(function(data){
    $http.get('/gamingsessions/' + session + '.json').success(function(data){
      $scope.gamingsession = data;
    })
  })
}

}]);