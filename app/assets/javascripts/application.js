// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require jquery-ui
//= require popper
//= require rails-ujs
//= require cocoon
//= require bootstrap-sprockets
//= require_tree .
//= require moment
//= require fullcalendar
//= require scheduler

$(function() {
    $('#calendar33').fullCalendar({
	themeSystem: 'bootstrap4',
	defaultDate: "8/16/2018",
	defaultView: "agendaDay",
	header: {
	  left: 'month,agendaWeek,agendaDay,listMonth',
	  center: 'title',
	  right: 'prev,today,next',
	},
	groupByResource: false,
	filterResourcesWithEvents: true,
	views: {
	  month: {
	    titleFormat: 'MMMM YYYY',
	    eventLimit: true,
	  },
	  agendaWeek: {
	    titleFormat: 'MMMM D YYYY',
	  },
	  day: {
	    titleFormat: 'dddd, MMMM D, YYYY',
	  },
	  agendayDay: {
	    titleFormat: 'MM YYYY',
	    groupByResource: true,
	    filterResourcesWithEvents: true,
	  },
	  listMonth: {
	  },
	},
	events: '/events.json',
	resources: '/locations.json',
	timeFormat: 'h(:mm)t',
	slotDuration: '00:15:00',
	slotLabelInterval: '01:00',
	minTime: '08:00:00',

	eventRender: function(event, element) {
	    element.find('.fc-title').append("<br/>" +
		( event.notes || "") + "<br/>" +
		( event.resource || "") 
	    );
	},
    });
})
