# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

reservation = HotelReservation.new({customer_name: "Mark Richardson", date: "10-21-16", room_number: 232})

puts "TESTING reservation room change..."

reservation.room_number = 343

if reservation.room_number == 343
  puts "PASS"
else
  "F"
end

puts "TESTING reservation amenities"
puts

reservation.add_a_fridge
reservation.add_a_crib
reservation.add_a_custom_amenity("champagne on ice")
required_amenities = ["fridge", "crib", "champagne on ice"]

if required_amenities.uniq.sort == reservation.amenities.uniq.sort
  puts "PASS"
else
  puts "F"
end


