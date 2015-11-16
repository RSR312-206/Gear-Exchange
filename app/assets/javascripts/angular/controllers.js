exchangeApp.controller("ItemsController",
  ['$scope', '$http', function($scope, $http) {

  $http.get("/items").then(function(res) {
    $scope.items = res.data;
  });

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

}])

exchangeApp.controller("NewItemController", ["$scope", "$http", "Item", function($scope, $http, Item ) {

}])









//if not items exist, send a note to the user