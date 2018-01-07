data = { data { rooms:
  [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number:  "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
  events: [
    { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 74 },
    { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
    { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
    { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}

total_cap = data[:data][:rooms][0][:capacity]

data[:data][:events].each do |event|
  if event [:attendees] >= 50
    puts "Room #{event[:room_id]} can accomidate for your event"
  else
    puts "Room #{event[:room_id]} won't be able to accomidate your event"
  end
end 
