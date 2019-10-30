var app = angular.module('myApp', []);

app.controller('myCtrl',
    function($scope, $http,$location) {

        $scope.systemid="ME3RMZBBDQD8PO09RB1A";
        $scope.secret="0omyH8KgL8eIp78r1KaRFtrYxhJodu+HKTi5oM/i98c=";
        var Request = new UrlSearch(); //实例化
        $scope.shiquxian=Request.shiquxian;
        $scope.load =function () {
            $http.get("http://202.98.201.121:1051/sjzx/api/get_token?grant_type=client_credential&systemid="+$scope.systemid+"&secret="+$scope.secret)
                .then(function (res) {
                    if(res.data.code==100){

                    }
                });
        }
        function UrlSearch() {
            var name, value;
            var str = location.href; //取得整个地址栏
            var num = str.indexOf("?");
            str = str.substr(num + 1); //取得所有参数   stringvar.substr(start [, length ]

            var arr = str.split("&"); //各个参数放到数组里
            for (var i = 0; i < arr.length; i++) {
                num = arr[i].indexOf("=");
                if (num > 0) {
                    name = arr[i].substring(0, num);
                    value = arr[i].substr(num + 1);
                    this[name] = value;
                }
            }
        }
    });