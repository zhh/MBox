class ChancesController < ApplicationController
  # GET /chances
  # GET /chances.xml
  def index
    @chances = Chance.paginate :page => params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @chances }
    end
  end

  # GET /chances/1
  # GET /chances/1.xml
  def show
    @chance = Chance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @chance }
    end
  end

  # GET /chances/new
  # GET /chances/new.xml
  def new
    @chance = Chance.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @chance }
    end
  end

  # GET /chances/1/edit
  def edit
    @chance = Chance.find(params[:id])
  end

  # POST /chances
  # POST /chances.xml
  def create
    @chance = Chance.new(params[:chance])

    respond_to do |format|
      if @chance.save
        format.html { redirect_to(@chance, :notice => 'Chance was successfully created.') }
        format.xml  { render :xml => @chance, :status => :created, :location => @chance }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @chance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /chances/1
  # PUT /chances/1.xml
  def update
    @chance = Chance.find(params[:id])

    respond_to do |format|
      if @chance.update_attributes(params[:chance])
        format.html { redirect_to(@chance, :notice => 'Chance was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @chance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /chances/1
  # DELETE /chances/1.xml
  def destroy
    @chance = Chance.find(params[:id])
    @chance.destroy

    respond_to do |format|
      format.html { redirect_to(chances_url) }
      format.xml  { head :ok }
    end
  end
end
