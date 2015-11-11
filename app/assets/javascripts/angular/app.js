var app = angular.module("app", ["ngRoute"]);

contactsApp.config(['$httpProvider', function($httpProvider) {
  $httpProvider.defaults.headers.common['X-CSRF-Token'] =
    $('meta[name=csrf-token]').attr('content');
}]);

app.config(["$routeProvider", function($routeProvider) {
  $routeProvider
    .when('/',
      templateUrl: 'partials/home.html',
      controller: 'ItemsController'
    });
    .when('/exchanges',
      templateUrl: 'partials/home.html',
      controller: 'ItemsController'
    });
    .otherwise({ redirectTo: '/' });
}]);