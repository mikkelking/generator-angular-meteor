'use strict'

angular.module '<%= appname %>'
.config ($stateProvider) ->
  $stateProvider
  .state 'about',
    url: '/about'
    templateUrl: 'client/about/about.view<%if(!jade) {%><%}%>.html'
    controller: 'AboutCtrl'
