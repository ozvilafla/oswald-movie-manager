# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#movie_listing').dataTable
    'responsive': true
    'aoColumnDefs': [ {
      'bSortable': false
      'aTargets': [ 6 ]
    } ]
    'order': [[ 6, 'asc' ]]