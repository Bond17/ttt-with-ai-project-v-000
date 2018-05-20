module Players
  class Computer < Player
    def move(board)
      move =nil
      if !board.taken?(5)##move middle if possible
        move = "5"
      elsif board.turn_count == 1#if other player took middle go in corner 3
        move = "3"
      elsif board.turn_count == 2# if we went first go in untaken corner with 2nd move
        move = [1,3,7,9].detect {|x| !board.taken?(x)}.to_s #return first untaken corner

       #if we went 2nd and got middle square check if other player has 2 oppossing squares and stop their trap by taking side
      elsif board.turn_count == 3 || board.position("1") == board.position("9") || board.position("3") == board.position("7")
        move = "2"
      else #next iterate through WIN_COMBINATIONS and win if possible or stop opponent from winning or move in empty square
        Game::WIN_COMBINATIONS.detect do |combo|
          #play winning move
          if combo.select {}
            move =
          #stop opponent from winning
          elsif combo
            move =
          end
      end

    end
  end
end
