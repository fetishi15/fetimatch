class UserProfsController < ApplicationController
  before_action :set_user_prof, only: [:show, :edit, :update, :destroy]



  # GET /user_profs/new
  def new
    @user_prof = UserProf.new
  end

  # GET /user_profs/1/edit
  def edit
  end

  # POST /user_profs
  # POST /user_profs.json
  def create
    @user_prof = UserProf.new(user_prof_params)
    @user_prof.user_id = current_user.id
    respond_to do |format|
      if @user_prof.save
        format.html { redirect_to @user_prof, notice: 'User prof was successfully created.' }
        format.json { render :show, status: :created, location: @user_prof }
      else
        format.html { render :new }
        format.json { render json: @user_prof.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_profs/1
  # PATCH/PUT /user_profs/1.json
  def update
    respond_to do |format|
      if @user_prof.update(user_prof_params)
        format.html { redirect_to @user_prof, notice: 'User prof was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_prof }
      else
        format.html { render :edit }
        format.json { render json: @user_prof.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_profs/1
  # DELETE /user_profs/1.json
  def destroy
    @user_prof.destroy
    respond_to do |format|
      format.html { redirect_to user_profs_url, notice: 'User prof was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_prof
      @user_prof = UserProf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_prof_params
      params.require(:user_prof).permit(:age, :img, :place, :name, :tall, :weight, :sex, :body_type, :hobby)
    end
end
