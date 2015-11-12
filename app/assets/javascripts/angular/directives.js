exchangeApp.directive('gsNavbar', function() {
  return {
    templateUrl: 'partials/navbar.html',
    restrict: 'E',
    scope: {
      navbar: '=navbarData'
    }

  }
})