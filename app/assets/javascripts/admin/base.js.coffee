# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
baseApp = angular.module("layoutApp", [
  'ngTouch',
  'ngAnimate',
  'infinite-scroll'
  ])
'use struct'
baseApp.controller "selectController", ($scope)->
  init = ->
    $scope.selector = [
      100,
      200,
      300,
      400,
      500
    ]
    null
  $scope.init = init()
  $scope.click = (sel,$event)->
    $scope.select = sel
    # tgt = $($event.target)
    # tgt.removeClass('disable')
    # tgt.addClass('enable')
    null
  $scope.selectAct = (index)->
    $scope.select == index
  $scope.submit = ()->
    if $scope.select
      alert $scope.select
  $scope.selectView = ()->
    $scope.selector[$scope.select]

baseApp.controller "AdminController", ($scope)->
  $scope.init = ->
    $scope.array_i = [1..100]

  $scope.message = (name)->
    'You are name = ' + name

  $scope.click = ->
    $scope.st = { area: true }

  $scope.hide = false

  $scope.infmore = ()->
    add = $scope.array_i[$scope.array_i.length - 1]
    $scope.array_i.push(add + 1)

  $scope.dubdub = (num)->
    return 2 ** num

  true
# light infinity

# baseApp.directive 'appVersion', ['version', (version)->
#   return (scope, elm, attrs)->
#     elm.text(version)
# ]

# angular.module("layoutApp.directives",[])
#   .directive 'appVersion', ['version', (version)->
#     (scope, elm, attrs)->
#       elm.text(version)
#   ]
#   .directive 'whenScrolled', ->
#   (scope, elem, attr)->
#     raw = elem[0]
#     angular.element($window).bind 'scroll', ->
#       if(raw.offsetTop + raw.offsetHeight < document.documentElement.scrollTop)
#         scope.$apply(attr.whenScrolled);
#     return true

# angular.module('layoutApp.controllers', [])
#   .controller 'AdminController', [->

#   ]
#   .controller 'infiniteScrollCtrl', ['$scope', ($scope)->
#     i= 0
#     data = []
#     for i in [0..25]
#       data.push(i)
#     $scope.data = data
#     $scope.next = data.length

#     $scope.loadMore = ->
#       if $scope.next == i + 25
#         return
#       $scope.next = i + 25

#       for x in [i..$scope.next]
#         data.push(i)
#         i++
#       true
#   ]


# sokuji kansuu
# do (baseApp) ->