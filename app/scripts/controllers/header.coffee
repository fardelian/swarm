'use strict'

###*
 # @ngdoc function
 # @name swarmApp.controller:HeaderCtrl
 # @description
 # # HeaderCtrl
 # Controller of the swarmApp
###
angular.module('swarmApp').controller 'HeaderCtrl', ($scope, $window, env, session) ->
  $scope.env = env
  $scope.session = session

  $scope.feedbackUrl = ->
    param = "#{window?.navigator?.userAgent}|#{$scope.session.exportSave()}"
    "https://docs.google.com/forms/d/1yH2oNcjUJiggxQhoP3pwijWU-nZkT-hJsqOR-5_cwrI/viewform?entry.436676437=#{encodeURIComponent param}"
    #"https://docs.google.com/forms/d/1yH2oNcjUJiggxQhoP3pwijWU-nZkT-hJsqOR-5_cwrI/viewform"
  
  $scope.isNonprod = ->
    $scope.env and $scope.env != 'prod'
