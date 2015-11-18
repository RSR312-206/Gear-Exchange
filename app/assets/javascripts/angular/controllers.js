exchangeApp.controller("ItemsController",
  ['$scope', '$http', function($scope, $http) {

  $http.get("/items").then(function(res) {
    $scope.items = res.data;
  });

  $scope.getPriceData = function(item) {
    var modelInput = encodeURIComponent(item.model).toLowerCase();
    console.log(modelInput);
    $http({
      method: "GET",
      url: "/sierra_trading",
      contentType: 'application/json',
      params: {search_model_type: modelInput}
    })
      .success(function(data) {
      $scope.price = data.Result[0].FinalPrice
        console.log($scope.price);
      })
      .error(function(data) {
        console.log('error');
      })
  }

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
    $http.get("/items").then(function(res) {
      $scope.items = res.data;
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