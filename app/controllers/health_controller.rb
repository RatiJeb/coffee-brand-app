# frozen_string_literal: true

# Instance Health Checker Controller
class HealthController < ApplicationController
  def index
    render json: { status: :ok }
  end
end
