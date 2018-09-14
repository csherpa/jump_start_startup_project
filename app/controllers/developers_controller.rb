class DevelopersController < ApplicationController
  before_action :set_developer, only: [:show, :edit, :update, :destroy]


  # GET /developers
  # GET /developers.json
  def index
    @developers = Developer.all
  end

  def set_default_avatar
    @developer.update(image: "http://www.orangegnome.com/identicon/identicon.php?string=Orange%20Gnome&size=250")
  end

  # GET /developers/1
  # GET /developers/1.json
  def show
    @developer = Developer.find(params[:id])
    @open_projects = Project.where({ developer_id: @developer.id, project_status: "open" })
    @inprogress_projects = Project.where({ developer_id: @developer.id, project_status: "in process" })
    @complete_projects = Project.where({ developer_id: @developer.id, project_status: "complete" })
    @pending_projects = Project.where({ developer_id: @developer.id, project_status: "pending" })
  end

  def index_projects
  end

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

  # GET /developers/new
  def new
    @developer = Developer.new
  end

  # GET /developers/1/edit
  def edit
    @developer = Developer.find(params[:id])
  end

  # POST /developers
  # POST /developers.json
  def create
    @developer = Developer.new(developer_params, image: "http://www.orangegnome.com/identicon/identicon.php?string=Orange%20Gnome&size=250")

    respond_to do |format|
      if @developer.save
        format.html { redirect_to @developer, notice: 'Developer was successfully created.' }
        format.json { render :show, status: :created, location: @developer }
      else
        format.html { render :new }
        format.json { render json: @developer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /developers/1
  # PATCH/PUT /developers/1.json
  def update
    respond_to do |format|
      if @developer.update(developer_params)
        format.html { redirect_to @developer, notice: 'Developer was successfully updated.' }
        format.json { render :show, status: :ok, location: @developer }
      else
        format.html { render :edit }
        format.json { render json: @developer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /developers/1
  # DELETE /developers/1.json
  def destroy
    @developer.destroy
    respond_to do |format|
      format.html { redirect_to developers_url, notice: 'Developer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_developer
      @developer = Developer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def developer_params
      params.require(:developer).permit(:email, :first_name, :last_name, :description, :phone_number, :state, :image)
      # params.fetch(:developer, {})
    end
end
