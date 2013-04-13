
require_relative 'usersession'

class FlashCardController
  def initialize(user_session_model)
    @user_session_model = user_session_model
  end



  def respond_to_decks(input)
    # choose one of the txt files that are available
    # @user_session_model.load(choice)
    # returns string of deck loaded
  end

  def respond_to_q_a(input)
    # calls validate(input)
    # traps user within here if the user keeps getting this wrong
    # return success or failure message
  end

  def looping
    respond_to_q_a
    
  end

  # def quit
    
  # end

end


class FlashCardView
  def initialize(controller)
    @controller = controller
  end

  def start
    welcome
    choose_decks_prompt
    game_play
  end

  def game_play
    #somehow loop this until base case is satisified
    questions_answers
  end

  def welcome
    puts "Welcome to the Flash Card Game"    
  end

  def choose_decks_prompt
    puts "which card game do you want play?"
    #puts # display all the txt files that are available
    print "> "
    input = gets.chomp
    puts @controller.respond_to_decks(input)
    puts "which one is loaded"
  end

  def questions_answers
    puts #question
    input = gets.chomp
    puts @controller.respond_to_q_a(input)
    
  end
end


user_session_model = UserSessionModel.new
flash_controller = FlashCardController.new(user_session_model)
new_game = FlashCardView.new(flash_controller)


new_game.start