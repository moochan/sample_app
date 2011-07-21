class CustmersController < ApplicationController
  # GET /custmers
  # GET /custmers.xml
  def index
    @custmers = Custmer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @custmers }
    end
  end

  # GET /custmers/1
  # GET /custmers/1.xml
  def show
    @custmer = Custmer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @custmer }
    end
  end

  # GET /custmers/new
  # GET /custmers/new.xml
  def new
    @custmer = Custmer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @custmer }
    end
  end

  # GET /custmers/1/edit
  def edit
    @custmer = Custmer.find(params[:id])
  end

  # POST /custmers
  # POST /custmers.xml
  def create
    @custmer = Custmer.new(params[:custmer])

    respond_to do |format|
      if @custmer.save
        format.html { redirect_to(@custmer, :notice => 'Custmer was successfully created.') }
        format.xml  { render :xml => @custmer, :status => :created, :location => @custmer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @custmer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /custmers/1
  # PUT /custmers/1.xml
  def update
    @custmer = Custmer.find(params[:id])

    respond_to do |format|
      if @custmer.update_attributes(params[:custmer])
        format.html { redirect_to(@custmer, :notice => 'Custmer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @custmer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /custmers/1
  # DELETE /custmers/1.xml
  def destroy
    @custmer = Custmer.find(params[:id])
    @custmer.destroy

    respond_to do |format|
      format.html { redirect_to(custmers_url) }
      format.xml  { head :ok }
    end
  end
end
