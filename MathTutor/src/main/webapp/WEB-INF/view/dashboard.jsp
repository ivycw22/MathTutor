
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Dashboard</title>
        <style>
        .w3-bar .w3-button {
        padding: 16px;
      }
           *, *:before, *:after {
        -moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;
        }

        body {
         font-family: 'HelveticaNeue-UltraLight', 'Helvetica Neue UltraLight', 'Helvetica Neue', Arial, Helvetica, sans-serif;
         font-weight: 100;
         color: rgba(0, 0, 0, 1);
         margin: 0;
         padding: 0;
         background: #fff;
         -webkit-touch-callout: none;
         -webkit-user-select: none;
         -khtml-user-select: none;
         -moz-user-select: none;
         -ms-user-select: none;
         user-select: none;
        }

        #calendar {
          -webkit-transform: translate3d(0, 0, 0);
          -moz-transform: translate3d(0, 0, 0);
          transform: translate3d(0, 0, 0);
          width: 420px;
          margin: 100px auto;
        /*   min-height: 570px; */
          height: auto;
          overflow: hidden;
          box-shadow: 0 12px 28px 0 rgba(0, 0, 0, 0.2),0 2px 4px 0 rgba(0, 0, 0, 0.1),inset 0 0 0 1px rgba(255, 255, 255, 0.5);
        }

        .header {
          height: 50px;
          width: 420px;
          background: rgba(255, 255, 255, 1);
          text-align: center;
          position:relative;
          z-index: 100;
        }

        .header h1 {
          margin: 0;
          padding: 0;
          font-size: 20px;
          line-height: 50px;
          font-weight: 100;
          letter-spacing: 1px;
          cursor: pointer;
        }

        .left, .right {
          position: absolute;
          width: 0px;
          height: 0px;
          border-style: solid;
          top: 50%;
          margin-top: -7.5px;
          cursor: pointer;
        }

        .left {
          border-width: 7.5px 10px 7.5px 0;
          border-color: transparent rgba(160, 159, 160, 1) transparent transparent;
          left: 20px;
        }

        .right {
          border-width: 7.5px 0 7.5px 10px;
          border-color: transparent transparent transparent rgba(160, 159, 160, 1);
          right: 20px;
        }

        .left:hover {
           border-color: transparent rgba(0, 0, 0, 1) transparent transparent;
        }

        .right:hover {
          border-color: transparent transparent transparent rgba(0, 0, 0, 1);
        }

        .month {
          /*overflow: hidden;*/
          opacity: 0;
        }

        .month.new {
          animation: fadeIn 1s ease-out;
          opacity: 1;
        }

        .month.in.next {
          -webkit-animation: moveFromTopFadeMonth .4s ease-out;
          -moz-animation: moveFromTopFadeMonth .4s ease-out;
          animation: moveFromTopFadeMonth .4s ease-out;
          opacity: 1;
        }

        .month.out.next {
          -webkit-animation: moveToTopFadeMonth .4s ease-in;
          -moz-animation: moveToTopFadeMonth .4s ease-in;
          animation: moveToTopFadeMonth .4s ease-in;
          opacity: 1;
        }

        .month.in.prev {
          -webkit-animation: moveFromBottomFadeMonth .4s ease-out;
          -moz-animation: moveFromBottomFadeMonth .4s ease-out;
          animation: moveFromBottomFadeMonth .4s ease-out;
          opacity: 1;
        }

        .month.out.prev {
          -webkit-animation: moveToBottomFadeMonth .4s ease-in;
          -moz-animation: moveToBottomFadeMonth .4s ease-in;
          animation: moveToBottomFadeMonth .4s ease-in;
          opacity: 1;
        }

        .week {
         background: rgba(255, 255, 255, 1);
        }

        .day {
          display: inline-block;
          width: 60px;
          padding: 10px;
          text-align: center;
          vertical-align: top;
          cursor: pointer;
          background: rgba(255, 255, 255, 1);
          position: relative;
          z-index: 100;
        }

        .day.other {
         color: rgba(0, 0, 0, .3);
        }

        .day.today {
          color: rgba(156, 202, 235, 1);
        }

        .day-name {
          font-size: 9px;
          text-transform: uppercase;
          margin-bottom: 5px;
          color: rgba(0, 0, 0, 1);
          letter-spacing: .7px;
        }

        .day-number {
          font-size: 24px;
          letter-spacing: 1.5px;
        }


        .day .day-events {
          list-style: none;
          margin-top: 3px;
          text-align: center;
          height: 12px;
          line-height: 6px;
          overflow: hidden;
        }

        .day .day-events span {
          vertical-align: top;
          display: inline-block;
          padding: 0;
          margin: 0;
          width: 5px;
          height: 5px;
          line-height: 5px;
          margin: 0 1px;
        }

        .blue { background: rgba(156, 202, 235, 1); }
        .orange { background: rgba(247, 167, 0, 1); }
        .green { background: rgba(153, 198, 109, 1); }
        .yellow { background: rgba(249, 233, 0, 1); }

        .details {
          position: relative;
          width: 420px;
          height: 75px;
          background: rgba(164, 164, 164, 1);
          background: #fbfbfb;
          margin-top: 5px;
          border-radius: 4px;
        }

        .details.in {
          -webkit-animation: moveFromTopFade .5s ease both;
          -moz-animation: moveFromTopFade .5s ease both;
          animation: moveFromTopFade .5s ease both;
        }

        .details.out {
          -webkit-animation: moveToTopFade .5s ease both;
          -moz-animation: moveToTopFade .5s ease both;
          animation: moveToTopFade .5s ease both;
        }

        .arrow {
          position: absolute;
          top: -5px;
          left: 50%;
          margin-left: -2px;
          width: 0px;
          height: 0px;
          border-style: solid;
          border-width: 0 5px 5px 5px;
          border-color: transparent transparent rgba(164, 164, 164, 1) transparent;
          transition: all 0.7s ease;
        }

        .events {
          height: 75px;
          padding: 7px 0;
          overflow-y: auto;
          overflow-x: hidden;
        }

        .events.in {
          -webkit-animation: fadeIn .3s ease both;
          -moz-animation: fadeIn .3s ease both;
          animation: fadeIn .3s ease both;
        }

        .events.in {
          -webkit-animation-delay: .3s;
          -moz-animation-delay: .3s;
          animation-delay: .3s;
        }

        .details.out .events {
          -webkit-animation: fadeOutShrink .4s ease both;
          -moz-animation: fadeOutShink .4s ease both;
          animation: fadeOutShink .4s ease both;
        }

        .events.out {
          -webkit-animation: fadeOut .3s ease both;
          -moz-animation: fadeOut .3s ease both;
          animation: fadeOut .3s ease both;
        }

        .event {
          font-size: 16px;
          line-height: 22px;
          letter-spacing: .5px;
          padding: 2px 16px;
          vertical-align: top;
        }

        .event.empty {
          color: #111;
        }

        .event-category {
          height: 10px;
          width: 10px;
          display: inline-block;
          margin: 6px 0 0;
          vertical-align: top;
        }

        .event span {
          display: inline-block;
          padding: 0 0 0 7px;
        }

        .legend {
          position: absolute;
          bottom: 0;
          width: 100%;
          height: 30px;
          background: rgba(255, 255, 255, 1);
          line-height: 30px;
          color:#000;

        }

        .entry {
          position: relative;
          padding: 0 0 0 25px;
          font-size: 13px;
          display: inline-block;
          line-height: 30px;
          background: transparent;
        }

        .entry:after {
          position: absolute;
          content: '';
          height: 5px;
          width: 5px;
          top: 12px;
          left: 14px;
        }

        .entry.blue:after { background: rgba(156, 202, 235, 1); }
        .entry.orange:after { background: rgba(247, 167, 0, 1); }
        .entry.green:after { background: rgba(153, 198, 109, 1); }
        .entry.yellow:after { background: rgba(249, 233, 0, 1); }

        /* Animations are cool!  */
        @-webkit-keyframes moveFromTopFade {
          from { opacity: .3; height:0px; margin-top:0px; -webkit-transform: translateY(-100%); }
        }
        @-moz-keyframes moveFromTopFade {
          from { height:0px; margin-top:0px; -moz-transform: translateY(-100%); }
        }
        @keyframes moveFromTopFade {
          from { height:0px; margin-top:0px; transform: translateY(-100%); }
        }

        @-webkit-keyframes moveToTopFade {
          to { opacity: .3; height:0px; margin-top:0px; opacity: 0.3; -webkit-transform: translateY(-100%); }
        }
        @-moz-keyframes moveToTopFade {
          to { height:0px; -moz-transform: translateY(-100%); }
        }
        @keyframes moveToTopFade {
          to { height:0px; transform: translateY(-100%); }
        }

        @-webkit-keyframes moveToTopFadeMonth {
          to { opacity: 0; -webkit-transform: translateY(-30%) scale(.95); }
        }
        @-moz-keyframes moveToTopFadeMonth {
          to { opacity: 0; -moz-transform: translateY(-30%); }
        }
        @keyframes moveToTopFadeMonth {
          to { opacity: 0; -moz-transform: translateY(-30%); }
        }

        @-webkit-keyframes moveFromTopFadeMonth {
          from { opacity: 0; -webkit-transform: translateY(30%) scale(.95); }
        }
        @-moz-keyframes moveFromTopFadeMonth {
          from { opacity: 0; -moz-transform: translateY(30%); }
        }
        @keyframes moveFromTopFadeMonth {
          from { opacity: 0; -moz-transform: translateY(30%); }
        }

        @-webkit-keyframes moveToBottomFadeMonth {
          to { opacity: 0; -webkit-transform: translateY(30%) scale(.95); }
        }
        @-moz-keyframes moveToBottomFadeMonth {
          to { opacity: 0; -webkit-transform: translateY(30%); }
        }
        @keyframes moveToBottomFadeMonth {
          to { opacity: 0; -webkit-transform: translateY(30%); }
        }

        @-webkit-keyframes moveFromBottomFadeMonth {
          from { opacity: 0; -webkit-transform: translateY(-30%) scale(.95); }
        }
        @-moz-keyframes moveFromBottomFadeMonth {
          from { opacity: 0; -webkit-transform: translateY(-30%); }
        }
        @keyframes moveFromBottomFadeMonth {
          from { opacity: 0; -webkit-transform: translateY(-30%); }
        }

        @-webkit-keyframes fadeIn  {
          from { opacity: 0; }
        }
        @-moz-keyframes fadeIn  {
          from { opacity: 0; }
        }
        @keyframes fadeIn  {
          from { opacity: 0; }
        }

        @-webkit-keyframes fadeOut  {
          to { opacity: 0; }
        }
        @-moz-keyframes fadeOut  {
          to { opacity: 0; }
        }
        @keyframes fadeOut  {
          to { opacity: 0; }
        }

        @-webkit-keyframes fadeOutShink  {
          to { opacity: 0; padding: 0px; height: 0px; }
        }
        @-moz-keyframes fadeOutShink  {
          to { opacity: 0; padding: 0px; height: 0px; }
        }
        @keyframes fadeOutShink  {
          to { opacity: 0; padding: 0px; height: 0px; }
        }

        .active {


        }
        </style>
        
    </head>
    <body>
        <!-- Navbar (sit on top) -->
        <div class="w3-top">
          <div class="w3-bar w3-white w3-card" id="myNavbar">
              <a href="/index" class="w3-bar-item w3-button w3-wide"><img src="http://ivywatson.com/Logo.jpg" width = 40 alt="Logo"/></a>
            <!-- Right-sided navbar links -->
            <div class="w3-right w3-hide-small">
                <a href="/about-me" class="w3-bar-item w3-button"><i class="fa fa-graduation-cap" aria-hidden="true"></i> ABOUT</a>
                <a href="/testimonials" class="w3-bar-item w3-button"><i class="fa fa-comments" aria-hidden="true"></i> TESTIMONIALS</a>
                <a href="/pricing" class="w3-bar-item w3-button"><i class="fa fa-usd"></i> PRICING</a>
                <a href="/appointment-scheduler" class="w3-bar-item w3-button"><i class="fa fa-calendar" aria-hidden="true"></i> APPOINTMENT SCHEDULER</a>
                <a href="/dashboard" class="w3-bar-item w3-button"><i class="fa fa-user-circle-o" aria-hidden="true"></i> DASHBOARD </a>
              </div>

            <!-- Hide right-floated links on small screens and replace them with a menu icon -->

            <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
              <i class="fa fa-bars"></i>
            </a>
          </div>
        </div>

        <!-- Sidebar on small screens when clicking the menu icon -->
        <nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
          <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
          <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">ABOUT</a>
          <a href="#team" onclick="w3_close()" class="w3-bar-item w3-button">TESTIMONIALS</a>
          <a href="#work" onclick="w3_close()" class="w3-bar-item w3-button">APPOINTMENT SCHEDULER</a>
          <a href="#pricing" onclick="w3_close()" class="w3-bar-item w3-button">PRICING</a>
        </nav>
        <div id="calendar"></div>
        <footer class="w3-center w3-black w3-padding-64">
        <div class="w3-xlarge w3-section">
            <a href ="https://www.facebook.com"><i class="fa fa-facebook-official w3-hover-opacity"></i></a>
            <a href ="https://www.instagram.com"<i class="fa fa-instagram w3-hover-opacity"></i></a>
            <a href ="https://www.snapchat.com"<i class="fa fa-snapchat w3-hover-opacity"></i></a>
            <a href ="https://www.pinterest.com"<i class="fa fa-pinterest-p w3-hover-opacity"></i></a>
            <a href = "https://www.twitter.com"<i class="fa fa-twitter w3-hover-opacity"></i></a>
            <a href = "https://www.linkedin.com"<i class="fa fa-linkedin w3-hover-opacity"></i></a>
        </div>
      </footer>
        <script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.5.1/moment.min.js"></script>
        <script>
            !function () {

	var today = moment();

	function Calendar(selector, events) {
		this.el = document.querySelector(selector);
		this.events = events;
		this.current = moment().date(1);
		this.draw();
		var current = document.querySelector('.today');
		if (current) {
			var self = this;
			window.setTimeout(function () {
				self.openDay(current);
			}, 500);
		}
	}

	Calendar.prototype.draw = function () {
		//Create Header
		this.drawHeader();

		//Draw Month
		this.drawMonth();

    //
		//this.drawLegend();
	}

	Calendar.prototype.drawHeader = function () {
		var self = this;
		if (!this.header) {
			//Create the header elements
			this.header = createElement('div', 'header');
			this.header.className = 'header';

			this.title = createElement('h1');
      this.title.addEventListener('click', function () {
				 self.curMonth();
			});

			var right = createElement('div', 'right');
			right.addEventListener('click', function () {
				self.nextMonth();
			});

			var left = createElement('div', 'left');
			left.addEventListener('click', function () {
				self.prevMonth();
			});

			//Append the Elements
			this.header.appendChild(this.title);
			this.header.appendChild(right);
			this.header.appendChild(left);
			this.el.appendChild(this.header);
		}

		this.title.innerHTML = this.current.format('MMMM YYYY');
	}

	Calendar.prototype.drawMonth = function () {
		var self = this;

		this.events.forEach(function (ev) {
		//	ev.date = self.current.clone().date(Math.random() * (29 - 1) + 1);
               
                ev.date = moment(ev.eventDate, "YYYY-MM-DD");
                ev.time = moment(ev.eventTime).format("hh:mm");
		});


		if (this.month) {
			this.oldMonth = this.month;
			this.oldMonth.className = 'month out ' + (self.next ? 'next' : 'prev');
			this.oldMonth.addEventListener('animationend', function () {
				self.oldMonth.parentNode.removeChild(self.oldMonth);
				self.month = createElement('div', 'month');
				self.backFill();
				self.currentMonth();
				self.fowardFill();
				self.el.appendChild(self.month);
				window.setTimeout(function () {
					self.month.className = 'month in ' + (self.next ? 'next' : 'prev');
				}, 16);
			});
		} else {
			this.month = createElement('div', 'month');
			this.el.appendChild(this.month);
			this.backFill();
			this.currentMonth();
			this.fowardFill();
			this.month.className = 'month new';
		}
	}

	Calendar.prototype.backFill = function () {
		var clone = this.current.clone();
		var dayOfWeek = clone.day() - 1;

		if (dayOfWeek == -1)
			dayOfWeek = 6;

		if (!dayOfWeek) {
			return;
		}

		clone.subtract('days', dayOfWeek + 1);

		for (var i = dayOfWeek; i > 0; i--) {
			this.drawDay(clone.add('days', 1));
		}
	}

	Calendar.prototype.fowardFill = function () {
		var clone = this.current.clone().add('months', 1).subtract('days', 1);
		var dayOfWeek = clone.day();

		if (dayOfWeek === 7) {
			return;
		}

		for (var i = dayOfWeek; i < 7; i++) {
			this.drawDay(clone.add('days', 1));
		}
	}

	Calendar.prototype.currentMonth = function () {
		var clone = this.current.clone();

		while (clone.month() === this.current.month()) {
			this.drawDay(clone);
			clone.add('days', 1);
		}
	}

	Calendar.prototype.getWeek = function (day) {
		if (!this.week || day.day() === 1) {
			this.week = createElement('div', 'week');
			this.month.appendChild(this.week);
		}
	}

	Calendar.prototype.drawDay = function (day) {
		var self = this;
		this.getWeek(day);

		//Outer Day
    var clickState = 0;
		var outer = createElement('div', this.getDayClass(day));
		outer.addEventListener('click', function () {
      if ( this.classList.contains('active') ) {
         self.closeDay(this);
      } 
      else {
         self.openDay(this);
      }
    
		});

		//Day Name
		var name = createElement('div', 'day-name', day.format('ddd'));

		//Day Number
		var number = createElement('div', 'day-number', day.format('DD'));


		//Events
		var events = createElement('div', 'day-events');
		this.drawEvents(day, events);

		outer.appendChild(name);
		outer.appendChild(number);
		outer.appendChild(events);
		this.week.appendChild(outer);
	}

	Calendar.prototype.drawEvents = function (day, element) {
		if (day.month() === this.current.month()) {
			var todaysEvents = this.events.reduce(function (memo, ev) {
				if (ev.date.isSame(day, 'day')) {
					memo.push(ev);
				}
				return memo;
			}, []);

			todaysEvents.forEach(function (ev) {
				var evSpan = createElement('span', ev.color);
				element.appendChild(evSpan);
			});
		}
	}

	Calendar.prototype.getDayClass = function (day) {
		classes = ['day'];
		if (day.month() !== this.current.month()) {
			classes.push('other');
		} else if (today.isSame(day, 'day')) {
			classes.push('today');
		}
		return classes.join(' ');
	}
  
  Calendar.prototype.closeDay = function (el) {
		// var details, arrow;
		// var dayNumber = +el.querySelectorAll('.day-number')[0].innerText || +el.querySelectorAll('.day-number')[0].textContent;
		// var day = this.current.clone().date(dayNumber);
    var daysActive = document.querySelectorAll(".day.active");

[].forEach.call(daysActive, function(i) {
    i.classList.remove("active");
});
		var currentOpened = document.querySelector('.details');
    
    
    if (currentOpened) {
				currentOpened.addEventListener('webkitAnimationEnd', function () {
					currentOpened.parentNode.removeChild(currentOpened);
				});
				currentOpened.addEventListener('oanimationend', function () {
					currentOpened.parentNode.removeChild(currentOpened);
				});
				currentOpened.addEventListener('msAnimationEnd', function () {
					currentOpened.parentNode.removeChild(currentOpened);
				});
				currentOpened.addEventListener('animationend', function () {
					currentOpened.parentNode.removeChild(currentOpened);
				});
				currentOpened.className = 'details out';
			}
  }

	Calendar.prototype.openDay = function (el) {
		var details, arrow;
		var dayNumber = +el.querySelectorAll('.day-number')[0].innerText || +el.querySelectorAll('.day-number')[0].textContent;
		var day = this.current.clone().date(dayNumber);
        
    
     var daysActive = document.querySelectorAll(".day.active");

[].forEach.call(daysActive, function(i) {
    i.classList.remove("active");
});
    el.classList.add('active');

		var currentOpened = document.querySelector('.details');
    
		//Check to see if there is an open detais box on the current row
		if (currentOpened && currentOpened.parentNode === el.parentNode) {
			details = currentOpened;
			arrow = document.querySelector('.arrow');
    
		} else {
			//Close the open events on differnt week row
			//currentOpened && currentOpened.parentNode.removeChild(currentOpened);
     //  el.classList.remove('active');
			if (currentOpened) {
				currentOpened.addEventListener('webkitAnimationEnd', function () {
					currentOpened.parentNode.removeChild(currentOpened);
				});
				currentOpened.addEventListener('oanimationend', function () {
					currentOpened.parentNode.removeChild(currentOpened);
				});
				currentOpened.addEventListener('msAnimationEnd', function () {
					currentOpened.parentNode.removeChild(currentOpened);
				});
				currentOpened.addEventListener('animationend', function () {
					currentOpened.parentNode.removeChild(currentOpened);
				});
				currentOpened.className = 'details out';
       
			}

			//Create the Details Container
			details = createElement('div', 'details in');

			//Create the arrow
			var arrow = createElement('div', 'arrow');

			//Create the event wrapper

			details.appendChild(arrow);
			el.parentNode.appendChild(details);
		}

		var todaysEvents = this.events.reduce(function (memo, ev) {
			if (ev.date.isSame(day, 'day')) {
				memo.push(ev);
			}
			return memo;
		}, []);

		this.renderEvents(todaysEvents, details);

		arrow.style.left = el.offsetLeft - el.parentNode.offsetLeft + 27 + 'px';
	}

	Calendar.prototype.renderEvents = function (events, ele) {
		//Remove any events in the current details element
		var currentWrapper = ele.querySelector('.events');
		var wrapper = createElement('div', 'events in' + (currentWrapper ? ' new' : ''));

		events.forEach(function (ev) {
			var div = createElement('div', 'event');
			var square = createElement('div', 'event-category ' + ev.color);
			var span = createElement('span', '', (moment(ev.eventTime).format("H:mm") + ' - ' + ev.eventName));

			div.appendChild(square);
			div.appendChild(span);
			wrapper.appendChild(div);
		});

		if (events.length === 0) {
			var div = createElement('div', 'event empty');
			var span = createElement('span', '', 'No Scheduled Appointments');

			div.appendChild(span);
			wrapper.appendChild(div);
		}

		if (currentWrapper) {
			currentWrapper.className = 'events out';
			currentWrapper.addEventListener('webkitAnimationEnd', function () {
				currentWrapper.parentNode.removeChild(currentWrapper);
				ele.appendChild(wrapper);
			});
			currentWrapper.addEventListener('oanimationend', function () {
				currentWrapper.parentNode.removeChild(currentWrapper);
				ele.appendChild(wrapper);
			});
			currentWrapper.addEventListener('msAnimationEnd', function () {
				currentWrapper.parentNode.removeChild(currentWrapper);
				ele.appendChild(wrapper);
			});
			currentWrapper.addEventListener('animationend', function () {
				currentWrapper.parentNode.removeChild(currentWrapper);
				ele.appendChild(wrapper);
			});
		} else {
			ele.appendChild(wrapper);
		}
	}

	Calendar.prototype.drawLegend = function () {
		var legend = createElement('div', 'legend');
		var calendars = this.events.map(function (e) {
			return e.calendar + '|' + e.color;
		}).reduce(function (memo, e) {
			if (memo.indexOf(e) === -1) {
				memo.push(e);
			}
			return memo;
		}, []).forEach(function (e) {
			var parts = e.split('|');
			var entry = createElement('span', 'entry ' + parts[1], parts[0]);
			legend.appendChild(entry);
		});
		this.el.appendChild(legend);
	}

	Calendar.prototype.nextMonth = function () {
		this.current.add('months', 1);
		this.next = true;
		this.draw();
	}

	Calendar.prototype.prevMonth = function () {
		this.current.subtract('months', 1);
		this.next = false;
		this.draw();
	}
  
  Calendar.prototype.curMonth = function () {
		this.current = moment().date(1);
		this.draw();
	}

	window.Calendar = Calendar;

	function createElement(tagName, className, innerText) {
		var ele = document.createElement(tagName);
		if (className) {
			ele.className = className;
		}
		if (innerText) {
			ele.innderText = ele.textContent = innerText;
		}
		return ele;
	}
}();

!function () {
	var data = [];
        <%-- moment format: "2013-02-08 09:30" --%>
        <c:forEach items='${appts}' var='appt' varStatus='i'>
            var name = '${appt.subject}' + ' Appointment';
            var date = '${appt.date}';
            var time = '${appt.time}';
            var info = {eventName: name, calendar: 'Work', color: 'orange', eventDate: moment(date), eventTime: moment(time, "hh:mm:ss")};
            data.push(info);
        </c:forEach>

        
        <%--
                {eventName: 'Lunch Meeting w/ Mark', calendar: 'Work', color: 'orange', eventTime: moment()},
                {eventName: 'Available Appointment', calendar: 'Work', color: 'orange', eventDate: moment("2023-02-28"), eventTime: moment("10:30", "HH:mm")}, 
                --%>       
	



	function addDate(ev) {

	}

	var calendar = new Calendar('#calendar', data);

}();									
        </script>
        
    </body>
</html>
