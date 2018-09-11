class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.all

    # Todo is_a? Developer and is_a? Employer
    @chats = Message.includes(:employer).select(:employer_id).from_developer(current_developer.id).group(:employer_id)
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
    @messages = Message.all
    @results_for_developer = Message.find(params[:id])
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
 
  # GET /messages/chat/:user_id
  def chat
    if current_user.is_a? Developer
      @recipient = Employer.find(params[:user_id])
      @messages = Message.where(developer_id: current_developer.id, employer_id: params[:user_id])
    elsif current_user.is_a? Employer
      @recipient = Developer.find(params[:user_id])
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
      params.require(:message).permit(:body)
    end
end
