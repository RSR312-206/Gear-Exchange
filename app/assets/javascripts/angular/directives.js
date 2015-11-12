exchangeApp.directive('gsNavbar', function() {
  return {
    templateUrl: 'partials/navbar.html',
    restrict: 'E',
    scope: {
      navbar: '=navbarData'
    }

  }
})

// exchangeApp.directive('gsUserImage', function() {
//   return {
//     templateUrl: 'partials/'
//   }
// })