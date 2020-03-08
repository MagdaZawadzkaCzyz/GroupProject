import com.google.api.client.http.javanet.NetHttpTransport;
import lombok.SneakyThrows;
import com.google.api.services.calendar.model.Event;
import com.google.api.services.calendar.model.Events;
import com.google.api.services.calendar.Calendar;
import com.google.api.client.util.DateTime;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;

@WebServlet(name = "ShowEventsServlet", urlPatterns = "/show")
public class ShowEvents extends HttpServlet {

    CalendarConnection api = new CalendarConnection();

    @SneakyThrows
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse response) throws IOException {
        final PrintWriter writer = response.getWriter();
        // Build a new authorized API client service.
        final NetHttpTransport HTTP_TRANSPORT = GoogleNetHttpTransport.newTrustedTransport();
        Calendar service = new Calendar.Builder(HTTP_TRANSPORT, api.JSON_FACTORY, api.getCredentials(HTTP_TRANSPORT))
                .setApplicationName(api.APPLICATION_NAME)
                .build();

        // List the next 10 events from the primary calendar.
        DateTime now = new DateTime(System.currentTimeMillis());
        Events events = service.events().list("primary")
                .setMaxResults(10)
                .setTimeMin(now)
                .setOrderBy("startTime")
                .setSingleEvents(true)
                .execute();
        List<Event> items = events.getItems();
        if (items.isEmpty()) {
            writer.println("No upcoming events found.");
        } else {
            writer.println("Upcoming events");
            for (Event event : items) {
                DateTime start = event.getStart().getDateTime();
                if (start == null) {
                    start = event.getStart().getDate();
                }
                writer.printf("%s (%s)\n", event.getSummary(), start);
            }
        }
    }

}

