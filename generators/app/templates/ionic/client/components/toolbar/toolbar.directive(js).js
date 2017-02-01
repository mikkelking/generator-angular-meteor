'use strict'

angular.module('<%= appname %>')
.directive('toolbar', function() {
  return {
    restrict: 'AE',
    templateUrl: 'client/components/toolbar/toolbar.view<%if(!jade) {%><%}%>.html',
    replace: true
  };
});