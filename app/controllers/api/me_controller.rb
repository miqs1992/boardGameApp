# frozen_string_literal: true

module Api
  class MeController < ApplicationController
    def index
      render json: MeSerializer.new(current_user)
    end
  end
end
