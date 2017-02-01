'use strict'

angular.module '<%= appname %>'
.config ($stateProvider) ->
  $stateProvider
  .state 'main',
    url: '/'
    templateUrl: 'client/main/main.view<%if(!jade) {%><%}%>.html'
    controller: 'MainCtrl'
