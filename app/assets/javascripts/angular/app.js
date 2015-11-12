var exchangeApp = angular.module("ExchangeApp", ["ngRoute", "ngResource"]);

exchangeApp.config(['$httpProvider', function($httpProvider) {
  $httpProvider.defaults.headers.common['X-CSRF-Token'] =
    $('meta[name=csrf-token]').attr('content');
}]);

exchangeApp.config(["$routeProvider", function($routeProvider) {
  $routeProvider
    .when('/',
      { templateUrl: 'partials/home.html',
      controller: 'ItemsController' })
    .when('/items', {
      templateUrl: 'partials/home.html',
      controller: 'ItemsController'
    });
}]);