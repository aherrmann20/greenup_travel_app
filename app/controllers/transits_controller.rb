class TransitsController < ApplicationController
	def index
		@transits = Transit.all
	end

	def new
		@transit = Transit.new
	end

	def create
		@transit = Transit.new(transit_params)
	end

	private
	def transit_params
		params.require(:transportation).permit(mode)
	end
end