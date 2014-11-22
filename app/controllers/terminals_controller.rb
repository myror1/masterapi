class TerminalsController < ApplicationController
	
	include ActionController::MimeResponds

  # GET /terminals
  # GET /terminals.json
  def index
    @terminals = Terminal.all

respond_to do |format|
    format.json { render json: @terminals }
    format.xml { render xml: @terminals }
  end
  end

  # GET /terminals/1
  # GET /terminals/1.json
  def show
    @terminal = Terminal.find(params[:id])

respond_to do |format|
    format.json { render json: @terminal }
    format.xml { render xml: @terminal }
  end
  end

  # POST /terminals
  # POST /terminals.json
  def create
    @terminal = Terminal.new(terminal_params)

    if @terminal.save
      render json: @terminal, status: :created, location: @terminal
    else
      render json: @terminal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /terminals/1
  # PATCH/PUT /terminals/1.json
  def update
    @terminal = Terminal.find(params[:id])

    if @terminal.update(terminal_params)
      head :no_content
    else
      render json: @terminal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /terminals/1
  # DELETE /terminals/1.json
  def destroy
    @terminal = Terminal.find(params[:id])
    @terminal.destroy

    head :no_content
  end

  private
    
    def terminal_params
      params.require(:terminal).permit(:name, :description, :attribute_values,:attr_keys)
    end
end
