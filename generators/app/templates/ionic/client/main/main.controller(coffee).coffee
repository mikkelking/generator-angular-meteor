'use strict'

angular.module '<%= appname %>'
.controller 'MainCtrl', ($scope, $ionicScrollDelegate) ->
<% if(pagination){ %>  $scope.page = 1
  $scope.perPage = 3
  $scope.sort = name_sort : 1
  $scope.orderProperty = '1'
  
  $scope.helpers
    things: () ->
      Things.find {},
        sort: $scope.getReactively 'sort'
    thingsCount: () ->
      Counts.get 'numberOfThings'
      
  $scope.subscribe 'things', () ->
    [
      {
        sort: $scope.getReactively 'sort'
        limit: parseInt $scope.getReactively 'perPage'
        skip: ((parseInt $scope.getReactively 'page') - 1) * (parseInt $scope.getReactively 'perPage')
      }
      $scope.getReactively 'search'
    ]
    
  $scope.save = () ->
    if $scope.form.$valid
      Things.insert $scope.newThing
      $scope.newThing = undefined
      $ionicScrollDelegate.resize()
      
  $scope.remove = (thing) ->
    Things.remove 
      _id: thing._id
    $ionicScrollDelegate.resize()
    
  $scope.pageChanged = (newPage) ->
    $scope.page = newPage
    
  $scope.$watch 'orderProperty', () ->
    if $scope.orderProperty
      $scope.sort = name_sort: parseInt($scope.orderProperty)<% } else { %>
  
  $scope.helpers
    things: () ->
      Things.find {}
      
  $scope.subscribe 'things', () ->
    [
      {}
      $scope.getReactively 'search'
    ]

  $scope.save = () ->
    if $scope.form.$valid
      Things.insert $scope.newThing
      $scope.newThing = undefined
      $ionicScrollDelegate.resize()
      
  $scope.remove = (thing) ->
    Things.remove 
      _id: thing._id
    $ionicScrollDelegate.resize()
<% } %>