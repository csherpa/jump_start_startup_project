class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.all

    @chats = Message.includes(:employer).select(:employer_id).from_developer(current_developer.id).group(:employer_id)
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
    @messages = Message.all
    @results_for_developer = Message.find(params[:id])

    
  end

  # GET /messages/new
  def new
    @message = Message.new
  
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.json
  def create
    @message = Message.new(message_params)

    respond_to do |format|
      if @message.save
        format.html { redirect_to @message, notice: 'Message was successfully created.' }
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :new }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  def update
    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message.destroy
    respond_to do |format|
      format.html { redirect_to messages_url, notice: 'Message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # GET /messages/chat/:user_id
  def chat

    if current_user.is_a? Developer
      @messages = Message.where(developer_id: current_developer.id, employer_id: params[:user_id])
    elsif current_user.is_a? Employer
      @messages = Message.where(employer_id: current_employer.id, developer_id: params[:user_id])
    else
      raise "Not logged in"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:subject, :body, :date, :developer_id, :employer_id)
    end
end
