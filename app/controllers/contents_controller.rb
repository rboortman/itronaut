class ContentsController < ApplicationController
  
=begin

  # GET /contents
  # GET /contents.json
  def index
    @contents = Content.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contents }
    end
  end
  
  
  # GET /contents/1
  # GET /contents/1.json
  def show
    if params[:id]
      @content = Content.find(params[:id])
    elsif params[:name]
      @content = Content.find_by_name(params[:name])
    end
    
    @home = Content.find_by_name('home')
    @contact = Content.find_by_name('contact')

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content }
    end
  end
  
=end
  
  def show
    @content = Content.find_by_page(params[:page])
    
    @home = Content.find_by_name('home')
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content }
    end
  end

=begin

  # GET /contents/new
  # GET /contents/new.json
  def new
    @content = Content.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content }
    end
  end

  # GET /contents/1/edit
  def edit
    @content = Content.find(params[:id])
  end

  # POST /contents
  # POST /contents.json
  def create
    @content = Content.new(params[:content])

    respond_to do |format|
      if @content.save
        format.html { redirect_to @content, notice: 'Content was successfully created.' }
        format.json { render json: @content, status: :created, location: @content }
      else
        format.html { render action: "new" }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contents/1
  # PUT /contents/1.json
  def update
    @content = Content.find(params[:id])

    respond_to do |format|
      if @content.update_attributes(params[:content])
        format.html { redirect_to @content, notice: 'Content was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contents/1
  # DELETE /contents/1.json
  def destroy
    @content = Content.find(params[:id])
    @content.destroy

    respond_to do |format|
      format.html { redirect_to contents_url }
      format.json { head :ok }
    end
  end
  
=end
  
end
