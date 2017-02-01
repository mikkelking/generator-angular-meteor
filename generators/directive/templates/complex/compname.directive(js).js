'use strict';

angular.module('<%= appname %>')
.directive('<%= compname %>', function() {
  return {
    restrict: 'EA',
    templateUrl: '<%= dir %>/<%= compnameSlugged %>.view<%if(!jade) {%><%}%>.html',
    replace: true,
    link: function(scope, elem, attrs) {
      scope.property = '<%=compname%>';
    }
  };
});