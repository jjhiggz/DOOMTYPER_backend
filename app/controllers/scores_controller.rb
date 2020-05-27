class ScoresController < ApplicationController
  def index
    @scores = Score.all
    render json: @scores, :include => { :user => { :only => :username } }
  end

  def show
    @scores = Score.all.filter do |score|
      score.game_id === params[:id].to_i
    end 
    render json: @scores, :include => {:user => { :only => :username  }}
  end

  def create
    header = request.headers
    authorization_header = header["Authorization"]
    token = authorization_header.split( ' ' )[1]
    secret = Rails.application.secrets.secret_key_base
    payload = JWT.decode(token, secret).first
    if !User.find(payload["user_id"])
      render json: { error: "user not found" }
      if !Game.find( params[:score][:game_id] )
        render json: {error: "game not found" }
      end
    else
      @user = User.find(payload["user_id"])
      @game = Game.find(params[:score][:game_id])
      @score = Score.create(
        user: @user,
        game: @game,
        time_complete: score_params[:time_complete],
        words_correct: score_params[:words_correct],
        words_incorrect: score_params[:words_incorrect],
        accuracy: score_params[:accuracy],
        wpm: score_params[:wpm],
      )
      render json: @score, status: :created
    end
  end

  private

    def score_params
      params.require(:score).permit(
        :game_id,
        :time_complete,
        :words_correct,
        :words_incorrect,
        :accuracy,
        :wpm,
      )
    end 
end
