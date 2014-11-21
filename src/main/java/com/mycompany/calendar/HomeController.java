package com.mycompany.calendar;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.calendar.domain.CalendarUser;
import com.mycompany.calendar.domain.Event;
import com.mycompany.calendar.domain.EventAttendee;
import com.mycompany.calendar.service.CalendarService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@Autowired
	CalendarService calendarservice;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		CalendarUser user = new CalendarUser();
		Event event =  new Event();
		EventAttendee attendee = new EventAttendee();
		List<CalendarUser> users;
		List<Event> events;
		List<EventAttendee> attendees;
		users = this.calendarservice.getAlluser();
		events = this.calendarservice.getAllEvents();
		attendees = this.calendarservice.getAllEventAttendee();
		model.addAttribute("user", user );
		model.addAttribute("users", users );
		model.addAttribute("event", event );
		model.addAttribute("events", events );
		model.addAttribute("attendee", attendee );
		model.addAttribute("attendees", attendees );

		
		return "home";
	}
	
}
