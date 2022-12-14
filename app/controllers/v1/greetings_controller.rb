module V1
  class GreetingsController < ApplicationController
    def index
      @greeting = Greetng.order('RANDOM()').first
      if @greeting
        render json: { success: true, message: 'Loaded greeting message', data: { greeting: @greeting } }, status: :ok
      else
        render json: { success: false, errors: 'Oops, Something went wrong!' }, status: :unprocessable_entity
      end
    end
  end
end
