class GameController < ApplicationController
  def homepage
      render({ :template => "game_templates/homepage" })
      end

  def two_six
    @first_dice = rand(1..6)
    @second_dice = rand(1..6)

    render({ :template => "game_templates/2d6" })
  end

  def two_ten
      @first_dice = rand(1..10)
      @second_dice = rand(1..10)
  
      render({ :template => "game_templates/2d10" })
  end

  def one_twenty
    @first_dice = rand(1..10)

    render({ :template => "game_templates/1d20" })
  end

  def five_four
    @first_dice = rand(1..4)
    @second_dice = rand(1..4)
    @third_dice = rand(1..4)
    @fourth_dice = rand(1..4)
    @fifth_dice = rand(1..4)

    render({ :template => "game_templates/5d4" })
  end

  def flexible
  @num_dice = params.fetch(:random_dice).to_i
  @sides = params.fetch(:random_sides).to_i
  @rolls = Array.new(@num_dice) { rand(1..@sides) }

  render({ :template => "game_templates/flexible" })
 
  end

end

