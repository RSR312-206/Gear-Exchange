exchangeApp.service('Item', ['$resource', function($resource) {
  return $resource('/items/:id.json', {});


}])








  // function filterItems(id) {
  //   var rangeArray = [];
  //   var myItem = value;
  //   items.forEach(function(item) {
  //     var range = item.price - myItem;
  //     if (range > 50) {
  //       item.price.push(rangeArray);
  //     }
  //     console.log(rangeArray)
  //     return rangeArray;
  //   });
  // }