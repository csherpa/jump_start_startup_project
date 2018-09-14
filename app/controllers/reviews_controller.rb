class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_project, only: [:show, :edit, :new, :update, :destroy]
  # before_action :set_developer
  # GET /reviews
  # GET /reviews.json
   

  # GET /reviews/new
  def new
    @review = Review.new
    @reviews = Review.where(project_id: @project.id).order("created_at DESC")
    # @aplications = Aplication.where(project_id: @project.id)
    
    # if Aplication.exists?(developer_id: @currentUser, project_id:  @project.id ) 
    #   @project.update(project_status: "pending")
    #   else
      
    # @project.update(project_status: "open")
    # end
   
  end

  # GET /reviews/1/edit
  def edit
     
  end

  def show
  enddef show
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @project = Project.find(params[:project_id])
    @review = Review.new(review_params) 
   
    @review.project_id = @project.id
    respond_to do |format|
      if @review.save
        format.html { redirect_to project_path(@project.id), notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }

      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
      
    end
    
  #   def set_developer
  #  @developer = Developer.find(params[:id])
  #    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:title, :review)
    end
    
    def set_project
      @project = Project.find(params[:project_id])
    end

    

end
