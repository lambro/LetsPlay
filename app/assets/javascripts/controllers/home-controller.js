app.controller('HomeController', function($scope, $http){
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

  $http.get('/groups.json').success(function(data){
    $scope.groups = data;
  });

  $http.get('/gamingsessions.json').success(function(data){
    $scope.gamingsessions = data;
  });

  $scope.enterDeets = function(){
   if($scope.deets == true){
    $scope.deets = false;
   }else{
    $scope.deets = true;
   }
  };

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
});