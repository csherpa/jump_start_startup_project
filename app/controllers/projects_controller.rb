class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    binary_select_options = [['Yes', true], ['No', false]]

    @filterrific = initialize_filterrific(
      Project,
      params[:filterrific],
      select_options: {
        plattform_mobile: binary_select_options,
        plattform_desktop: binary_select_options,
      },
      default_filter_params: {},
      sanitize_params: false,
    ) or return
    # raise "Can't build filters" unless @filterrific
    @projects = @filterrific.find

    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:developer_id, :employer_id, :project_name, :project_description, :project_review, :plattform_mobile, :plattform_desktop, :platform_tablet, :assets_text, :assets_images, :assets_videos, :assets_audio, :assets_database, :due_date_less_then_month, :due_date_one_month, :due_date_three_month, :due_date_plus_three_month, :pages_landing_pages, :pages_two_pages)
    end
end
