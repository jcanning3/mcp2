out = <<CAL
BEGIN:VCALENDAR
PRODID:-//LCCMF//EN
VERSION:2.0
CALSCALE:GREGORIAN
METHOD:PUBLISH
CAL

@events.each_with_index do |appt, idx|
  out << <<CAL
BEGIN:VEVENT
DTSTART:#{l(appt.start, format: :ical)}
DTEND:#{l(appt.end, format: :ical)}
DTSTAMP:#{l(Time.now, format: :ical)}
UID:appointment#{appt.id}@'lccmf.org'
CREATED:#{l(appt.created_at, format: :ical)}
DESCRIPTION:#{appt.description}
LAST-MODIFIED:#{l(appt.updated_at, format: :ical)}
LOCATION:#{l(appt.location.name)}
SEQUENCE:#{idx}
STATUS:#{appt.status_ical}
SUMMARY:#{appt.name}
END:VEVENT
CAL
end

out << "END:VCALENDAR"
