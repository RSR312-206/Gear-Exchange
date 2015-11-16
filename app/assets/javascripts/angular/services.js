exchangeApp.factory('Item', function($http) {
  var Item = {};
  Item.arr = [];

  $http.get('/items').then(function(res) {
    var items = res.data;
    items.forEach(function(item) {
      Item.arr.push(item);
    })
  })

  // Item.editItem = function(edit) {
  //   $http.put("/items/" + item.id, item).success(function(data) {
  //     console.log(data);
  //   })
  //   .error(function(data) {
  //     console.log("error " + data);
  //   });
  // }
  return Item;
})
