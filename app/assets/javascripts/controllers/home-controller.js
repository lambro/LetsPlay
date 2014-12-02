app.controller('HomeController', function($scope, $http){
  $http.get('/consoles.json').success(function(data){
    $scope.consoles = data;
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
});