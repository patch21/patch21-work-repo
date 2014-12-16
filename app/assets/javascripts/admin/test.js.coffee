angular.module('testMod', [])
  .factory 'test_function', ($window)->
    return {
      mes: (message)->
        $window.alert(message)
    }

# testApp = angular.module('layoutApp', ['testMod'])

# testApp.controller 'testController', ($scope)->
#   $scope.mes = 'testMod.test_function.mes("ok!")'
#   true