app.controller('HomeController', ['$scope', '$routeParams', '$http', function($scope, $routeParams, $http){
  $scope.current_user = currentUser

  $http.get('/consoles.json').success(function(data){
    $scope.consoles = data;
  });

  $http.get('/users.json').success(function(data){
    $scope.users = data;
  });

  $http.get('/games.json').success(function(data){
    $scope.games = data;
  });

  $scope.searchGames = function(){
    console.log("Something")
    $http.post('/games/get_games.json', {game: {title: $scope.searchGames.title}}).success(function(data){
    $scope.gameSearchResults = data.results;
    console.log(data.results)
  });
  }

  $http.get('/groups.json').success(function(data){
    $scope.groups = data;
  });

  
  $http.get('/gamingsessions/' + $routeParams.id + '.json').success(function(data){

    $scope.gamingsession = data;
  });

  $scope.currentUser = currentUser

  $http.get('/console_users.json').success(function(data){
      console.log(data);
      $scope.console_users = data;
  });


  // $scope.addStall = function(){
  //   $http.post('/stalls.json', {stall: $scope.newStall}).success(function(stall){
  //     $scope.stalls.push(stall);
  //     $scope.newStall = false;
  //     $scope.stallForm.$setPristine();
  //   })
  // } 
  
  // $scope.selectStall = function(stall){
  //   $scope.selectedStall = stall;
  // }

  // $scope.clearSelectedStall = function(){
  //   $scope.selectedStall = undefined;
  // }

  // $scope.addStall = function(){
  //   //Because it is attached to ng-model we can push into the array; 
  //   stalls.push($scope.newStall);
  //   $scope.newStall = false;
  //   //Angular function starts with a dollar sign to separate it from custom functions you write yourself; 
  //   $scope.stallForm.$setPristine();
  // }
}]);