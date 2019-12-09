class Player

    def get_move 
        puts 'enter a position with coordinates separated with a space like `4 7`'
        user_response = gets.chomp
        user_response.split(" ").map(&:to_i)
    end 

end
