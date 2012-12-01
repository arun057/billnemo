# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
//= require jquery_nested_form
//= require bootstrap-datepicker/core

jQuery ->
  $('#new_bill').on "focus", "[data-behaviour~='datepicker']", (e) ->
    $(this).datepicker
      format: "yyyy-mm-dd"
      weekStart: 1
      autoclose: true