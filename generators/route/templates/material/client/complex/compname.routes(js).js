'use strict'

angular.module('<%= appname %>')
.config(function($stateProvider) {
  $stateProvider
  .state('<%= compname %>-list', {
    url: '/<%= compnameSlugged %>',
    templateUrl: '<%= dir %>/<%=compnameSlugged%>-list.view<%if(!jade) {%><%}%>.html',
    controller: '<%= compnameCapped %>ListCtrl'<% if(auth && protected) { %>,
    resolve: {
      currentUser: ['$meteor', function($meteor) {
        return $meteor.requireUser();
      }]
    }<% } %>
  })
  .state('<%= compnameSingular %>-detail', {
    url: '/<%= compnameSlugged %>/:<%=compnameSingular%>Id',
    templateUrl: '<%= dir %>/<%=compnameSluggedSingular%>-detail.view<%if(!jade) {%><%}%>.html',
    controller: '<%= compnameCappedSingular %>DetailCtrl'<% if(auth && protected) { %>,
    resolve: {
      currentUser: ['$meteor', function($meteor) {
        return $meteor.requireUser();
      }]
    }<% } %>
  });
});