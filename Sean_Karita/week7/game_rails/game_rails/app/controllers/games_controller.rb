class GamesController < ApplicationController

  def index
  end

  def @magic_result = [
      'At Least I Love You',
      'Brilliant Idea!',
      'Half-Full, Have You Lost Weight?',
      'It Can\'t Be All That Bad',
      'Look On The Bright Side, Nice Job!',
      'Nice Outfit!, Nice Try!',
      'People Like You, Pure Genius!',
      'That\'s O.K.',
      'The Sky\'s The Limit',
      'Who Says You\'re Stupid?',
      'You Can Do It!',
      'You Look Marvelous',
      'Your Breath Is So Minty',
      'You\'re 100% Fun!',
      'You\'re A Winner!, You\'re Good Enough...'
    ]
  end

  rock_paper_scissors = [
    'rock', 'paper', 'scissors'
  ]

  def magic
    @question = params[:question]

    if @question
      @answer = @magic_result.sample
    end
  end

  def secret
    guess = params[:guess]

    if guess
      @result = Random.rand(10) + 1
      if guess.to_i == @result
        render :secret_win
      else
        render :secret_lose
      end
    end
  end

  def rock_paper_scissors
  end

end
