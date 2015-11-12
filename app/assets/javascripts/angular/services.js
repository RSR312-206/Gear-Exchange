exchangeApp.service('Item', ['$resource', function($resource) {
  return $resource('/items/:id.json', { item: "@item"} );
}])