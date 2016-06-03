var menuList = [ {
	itemId : 1,
	itemName : '샌드위치',
	itemPrice : 2000,
	itemCount : 0
}, {
	itemId : 2,
	itemName : '아메리카노',
	itemPrice : 1000,
	itemCount : 0
}, {
	itemId : 3,
	itemName : '카푸치노',
	itemPrice : 1500,
	itemCount : 0
} ];



angular.module("myApp",[]).controller("mainCtrl",function($scope){
	$scope.menuTitle = "메뉴판";
	$scope.menuContent = "메뉴목록";	
	$scope.buyPrice = "구매가격"
	$scope.menuList = menuList;
	$scope.totalPrice = function(){
		var total = 0;
		angular.forEach($scope.menuList, function(value,key){
			total+=value.itemPrice * value.itemCount;
		});	
		
		return total;
	};
});