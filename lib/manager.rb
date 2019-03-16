require "pry"
require_relative "room"

module Hotel
  class Manager
    attr_accessor :rooms_reservations_hash

    def initialize
      @rooms_reservations_hash = Room.make_rooms
    end

    # Manager.rooms_res_hash builds this structure:
    # {
    #     1:[],
    #     2:[],
    #     3:[],
    #     4:[]
    #      ...
    #     20:[]
    # }

    def list_rooms
      all_room_numbers = @rooms_reservations_hash.keys.sort!

      puts "Rooms in this hotel:"
      puts all_room_numbers

      return all_room_numbers
    end

    def list_reservations_for_date(date)
      # write code here
    end

    def find_avail_rooms_for_dates(ckin, ckout)
      # write code here
    end

    def make_res_for_room(ckin, ckout, room_num)
      new_res = Reservation.new(ckin, ckout)

      @rooms_reservations_hash[room_num] << new_res
      #   binding.pry
    end
  end
end
