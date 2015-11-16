exchangeApp.controller("ItemsController",
  ['$scope', '$http', function($scope, $http) {

  $http.get("/items").then(function(res) {
    console.log(res.data);
    $scope.items = res.data;
  });

}])

exchangeApp.controller("ShowController",
["$scope", "$http", "$routeParams", "Item", function($scope, $http, $routeParams, Item) {

  $http.get("/items/" + $routeParams.id).then(function(res) {
    console.log(res.data);
    $scope.currentItem = res.data;
  })

  $http.get("/items/" + $routeParams.id + "/in_range").then(function(res) {
    $scope.results = res.data;
  });

  $scope.updateItem = function(currentItem) {
    var id = currentItem.id;
    console.log(id);
    console.log(currentItem);
    $http.put("/items/" + id, currentItem).success(function(data) {
      console.log(data);
    })
    .error(function(data) {
      console.log("error ");
    });
  }

}])

