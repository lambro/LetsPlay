class GamingsessionsController < ApplicationController
  # GET /gamingsessions
  # GET /gamingsessions.json
  def index
    @gamingsessions = Gamingsession.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gamingsessions }
    end
  end

  # GET /gamingsessions/1
  # GET /gamingsessions/1.json
  def show
    @gamingsession = Gamingsession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gamingsession }
    end
  end

  # GET /gamingsessions/new
  # GET /gamingsessions/new.json
  def new
    @gamingsession = Gamingsession.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gamingsession }
    end
  end

  # GET /gamingsessions/1/edit
  def edit
    @gamingsession = Gamingsession.find(params[:id])
  end

  # POST /gamingsessions
  # POST /gamingsessions.json
  def create
    @gamingsession = Gamingsession.new(params[:gamingsession])

    respond_to do |format|
      if @gamingsession.save
        format.html { redirect_to @gamingsession, notice: 'Gamingsession was successfully created.' }
        format.json { render json: @gamingsession, status: :created, location: @gamingsession }
      else
        format.html { render action: "new" }
        format.json { render json: @gamingsession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gamingsessions/1
  # PUT /gamingsessions/1.json
  def update
    @gamingsession = Gamingsession.find(params[:id])

    respond_to do |format|
      if @gamingsession.update_attributes(params[:gamingsession])
        format.html { redirect_to @gamingsession, notice: 'Gamingsession was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gamingsession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gamingsessions/1
  # DELETE /gamingsessions/1.json
  def destroy
    @gamingsession = Gamingsession.find(params[:id])
    @gamingsession.destroy

    respond_to do |format|
      format.html { redirect_to gamingsessions_url }
      format.json { head :no_content }
    end
  end
end
