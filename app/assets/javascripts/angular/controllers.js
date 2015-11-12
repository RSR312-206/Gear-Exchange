exchangeApp.controller("ItemsController",
  ['$scope', '$http', 'Item', "$routeParams", function($scope, $http, Item, $routeParams) {

  $scope.items = Item.query();

  $http.get("/items/" + $routeParams.id + "/in_range").then(function(res) {
    $scope.results = res.data;
    console.log($scope.results);
  })

}])
