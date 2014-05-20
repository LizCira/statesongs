class StatesController < ApplicationController

def index
  @states = State.all
end

def create
  State.create(state_attributes)

end

def show
    @state = State.find(params[:id])
end

def save_state
  @query_state = params
end

private

  def state_attributes
    params.require(:state).permit(:name)
  end

end


