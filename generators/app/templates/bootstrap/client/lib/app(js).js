// This list of imports need to be dynamically constructed too
import angular from 'angular';
import angularMeteor from 'angular-meteor';
import uiRouter from 'angular-ui-router';
import uiBootstrap from 'angular-ui-bootstrap';
import angularPaginate from 'angular-utils-pagination';

angular.module('<%= appname %>', [
  <%= modules %>
]);

onReady = function() {
	console.log("Bootstrapping Angular now");
  angular.bootstrap(document, ['<%= appname %>'], { strictDi: true});
};
  
if(Meteor.isCordova) {
  angular.element(document).on('deviceready', onReady);
} else {
  angular.element(document).ready(onReady);
}