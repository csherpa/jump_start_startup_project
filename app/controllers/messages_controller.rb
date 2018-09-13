class MessagesController < ApplicationController
  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.all
    # Todo is_a? Developer and is_a? Employer
    if current_user.is_a? Developer
      @chats = Message.includes(:employer).select(:employer_id).from_developer(current_developer.id).group(:employer_id)
    elsif current_user.is_a? Employer
      @chats = Message.includes(:developer).select(:developer_id).from_employer(current_employer.id).group(:developer_id)
    end

  end

  # POST /messages
  # POST /messages.json
  def create
    recipient_id = params[:message][:recipient_id]

    @message = Message.new(message_params)
    @message.created_at = Time.now
    @message.updated_at = Time.now
    @message.set_user_ids(current_user, recipient_id)

    if @message.save
      respond_to do |format|
        format.html { redirect_to chat_messages_path(recipient_id), notice: 'Message was successfully created.' }
        format.js { load_chat recipient_id }
      end
    else
      respond_to do |format|
        format.html { redirect_to chat_messages_path(recipient_id), alert: 'Error creating message.' }
        format.js { load_chat recipient_id }
      end
    end
  end
 
  # GET /messages/chat/:user_id
  def chat
    load_chat params[:user_id]
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:body)
    end

    # Load chat messages
    def load_chat(recipient_id)
      if current_user.is_a? Developer
        @recipient = Employer.find(recipient_id)
        @messages = Message.where(developer_id: current_developer.id, employer_id: recipient_id)
      elsif current_user.is_a? Employer
        @recipient = Developer.find(recipient_id)
        @messages = Message.where(employer_id: current_employer.id, developer_id: recipient_id)
      else
        raise "Not logged in"
      end  
    end
end
