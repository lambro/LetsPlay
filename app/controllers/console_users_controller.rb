class ConsoleUsersController < ApplicationController
  # GET /console_users
  # GET /console_users.json
  def index
    # @console_users = ConsoleUser.all
    @console_users = current_user.consoles_users
    # binding.pry
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @console_users, include: :console }
    end
  end

  # GET /console_users/1
  # GET /console_users/1.json
  def show
    @console_user = ConsoleUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @console_user }
    end
  end

  # GET /console_users/new
  # GET /console_users/new.json
  def new
    @console_user = ConsoleUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @console_user }
    end
  end

  # GET /console_users/1/edit
  def edit
    @console_user = ConsoleUser.find(params[:id])
  end

  # POST /console_users
  # POST /console_users.json
  def create
    @console_user = ConsoleUser.new(params[:console_user])

    respond_to do |format|
      if @console_user.save
        format.html { redirect_to @console_user, notice: 'Console user was successfully created.' }
        format.json { render json: @console_user, status: :created, location: @console_user }
      else
        format.html { render action: "new" }
        format.json { render json: @console_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /console_users/1
  # PUT /console_users/1.json
  def update
    @console_user = ConsoleUser.find(params[:id])

    respond_to do |format|
      if @console_user.update_attributes(params[:console_user])
        format.html { redirect_to @console_user, notice: 'Console user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @console_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /console_users/1
  # DELETE /console_users/1.json
  def destroy
    @console_user = ConsoleUser.find(params[:id])
    @console_user.destroy

    respond_to do |format|
      format.html { redirect_to console_users_url }
      format.json { head :no_content }
    end
  end
end
