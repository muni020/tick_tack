class GamesController < ApplicationController
    $game_array = [nil,nil,nil,nil,nil,nil,nil,nil,nil]
    $user
    $isWin = false
    $counter = 0
    def index
      $user = User.find(params[:id])
      p "====================="
      p $game_array
      p "====================="
    end

    def check
      p params[:index].to_i
      p "checked==========================="
      if $game_array[params[:index].to_i] == nil
        $game_array[params[:index].to_i] = 0
        win_check()
        return if $isWin
        
        computer_round()
        win_check() if !$isWin
        return if $isWin
        redirect_to "/game/start/#{$user.id}"
      end
      p "checked==========================="
    end

    def reset
        p "Reset =================   ="
        $game_array.each_index do |index|
            $game_array[index] = nil
        end
        $isWin = false
        $counter = 0
        redirect_to "/game/start/#{$user.id}"
    end

    private

    def computer_round
        nil_indices = []
        $game_array.each_with_index do |element, index|
          nil_indices << index if element.nil?
        end
        if nil_indices.size !=0
         random_element = nil_indices.sample
         $game_array[random_element] = 1
        end
    end

    def win_check
        $counter+=1
        if $game_array[0] == $game_array[4] && $game_array[4] == $game_array[8] && $game_array[8] != nil
            who_win($game_array[0])
        elsif $game_array[2] == $game_array[4] && $game_array[4] == $game_array[6] && $game_array[6] != nil
            who_win($game_array[2])
        elsif $game_array[1] == $game_array[4] && $game_array[4]== $game_array[7] && $game_array[7] != nil
            who_win($game_array[1])
        elsif $game_array[3] == $game_array[4] && $game_array[4]== $game_array[5] && $game_array[5] != nil
            who_win($game_array[3])
        elsif $game_array[0] == $game_array[1] && $game_array[1]== $game_array[2] && $game_array[2] != nil
            who_win($game_array[0])
        elsif $game_array[6] == $game_array[7] && $game_array[7]== $game_array[8] && $game_array[8] != nil
            who_win($game_array[6])
        elsif $game_array[0] == $game_array[3] && $game_array[3]== $game_array[6] && $game_array[6] != nil
            who_win($game_array[0])
        elsif $game_array[2] == $game_array[5] && $game_array[5]== $game_array[8] && $game_array[8] != nil
            who_win($game_array[2])
        elsif $counter==9
            who_win(-1)
        end
    end
    
    def who_win(value)
        $isWin = true
        $game_array.each_index do |index|
            $game_array[index] = nil
        end
        if value == 0
            $user.update(win: $user.win+1)
            redirect_to "/game/start/#{$user.id}", notice: "success"
        elsif value==-1
            redirect_to "/game/start/#{$user.id}", notice: "draw"
        else
            $user.update(lose: $user.lose+1)
            redirect_to "/game/start/#{$user.id}", notice: "danger"
        end
    end
    
end