'use strict'

angular.module '<%= appname %>'
.directive '<%= compname %>', ->
  restrict: 'EA'
  templateUrl: '<%= dir %>/<%= compnameSlugged %>.view<%if(!jade) {%><%}%>.html'
  replace: true
  link: (scope, elem, attrs) ->
    scope.property = '<%=compname%>'
