class CompaniesController < ApplicationController
  
  def index
    if params[:search]
      @tech = params[:search]
      @companies = Company.tagged_with(@tech, :on => :techs)
    else
      @companies = Company.all
    end
        
    respond_to do |format|
      format.html #index.html.erb
      format.json { render json: @companies }
    end
  end
  
  def show
    @company = Company.find(params[:id])
    
    respond_to do |format|
      format.html #show.html.erb
      format.json { render json: @company }
    end
  end
  
  # GET /companies/new
  # GET /campanies/new.json
  def new
    @company = Company.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @company }
    end
  end

  # GET /companies/1/edit
  def edit
    @company = Company.find(params[:id])
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(params[:company])

    respond_to do |format|
      if @company.save
        format.html { redirect_to @company, notice: 'Company was successfully created.' }
        format.json { render json: @company, status: :created, location: @company }
      else
        format.html { render action: "new" }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /companies/1
  # PUT /companies/1.json
  def update
    @company = Company.find(params[:id])

    respond_to do |format|
      if @company.update_attributes(params[:company])
        format.html { redirect_to @company, notice: 'Company was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @company = Company.find(params[:id])
    @company.destroy

    respond_to do |format|
      format.html { redirect_to companies_url }
      format.json { head :no_content }
    end
  end
  
  def search
    @tech = params[:tech]
    @companies = Company.tagged_with(@tech, :on => :techs)

    respond_to do |format|
      format.html # search.html.erb
      format.json { head :no_content }
    end
  end
  
end
