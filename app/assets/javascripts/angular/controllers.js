exchangeApp.controller("ItemsController",
  ['$scope', '$http', function($scope, $http) {

  $http.get("/items").then(function(res) {
    $scope.items = res.data;
  });

  $http.get("/sierra_trading").then(function(res) {
    $scope.prices = res;
    console.log($scope.prices);

  });

  $scope.createNewItem = function(){
    $http({
      method  : 'POST',
      url     : '/items',
      data    : $scope.item,
      })
      .success(function(data, status) {
        console.log(data);
      })
      .error(function(data, status) {
        console.log("error");
      });
  };
}])

exchangeApp.controller("ShowController",
["$scope", "$http", "$routeParams", "Item", function($scope, $http, $routeParams, Item) {

  $http.get("/items/" + $routeParams.id).then(function(res) {
    $scope.currentItem = res.data;
  })
  $http.get("/items/" + $routeParams.id + "/in_range").then(function(res) {
      $scope.results = res.data;
    });

  $scope.updateItem = function(currentItem) {
    var id = currentItem.id;
    $http.put("/items/" + id, currentItem).success(function(data) {
    })
    .error(function(data) {
      console.log("error ");
    });
    $http.get("/items/" + $routeParams.id + "/in_range").then(function(res) {
      $scope.results = res.data;
    });
  }

}]);