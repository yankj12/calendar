$(function() {

	// page is now ready, initialize the calendar...
	// en zh-cn
	var initialLocaleCode = 'zh-cn';

	$('#calendar').fullCalendar({
		// put your options and callbacks here

		header : {
			left : 'prev,next today',
			//center : 'title,addEventButton',
			center : 'addEventButton',
			right : 'month,agendaWeek,agendaDay,listMonth'
		},
		defaultDate : '2018-03-12',
		locale : initialLocaleCode,
		navLinks : true, // can click day/week names to navigate views
		editable : true,
		eventLimit : true, // allow "more" link when too many events
		events : [ {
			title : 'All Day Event',
			start : '2018-03-01'
		}, {
			title : 'Long Event',
			start : '2018-03-07',
			end : '2018-03-10'
		} ],
		dayClick: function(date, jsEvent, view) {
			// alert('a day has been clicked!');
			console.log('clicked on ' + date.format());
		},
		customButtons: {
	        addEventButton: {
	          text: 'add event...',
	          click: function() {
	            var dateStr = prompt('Enter a date in YYYY-MM-DD format');
	            var date = moment(dateStr);

	            if (date.isValid()) {
	              $('#calendar').fullCalendar('renderEvent', {
	                title: 'dynamic event',
	                start: date,
	                allDay: true
	              });
	              alert('Great. Now, update your database...');
	            } else {
	              alert('Invalid date.');
	            }
	          }
	        }
		}
	})

});