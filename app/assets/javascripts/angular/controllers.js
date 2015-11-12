exchangeApp.controller("ItemsController", ['$scope', '$http', 'Item', function($scope, $http, Item) {
  $scope.items = Item.query()
}])