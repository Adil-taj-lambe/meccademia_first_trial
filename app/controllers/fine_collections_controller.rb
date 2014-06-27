class FineCollectionsController < ApplicationController
  before_action :set_fine_collection, only: [:show, :edit, :update, :destroy]

  # GET /fine_collections
  # GET /fine_collections.json
  def index
    @fine_collections = FineCollection.all
  end

  # GET /fine_collections/1
  # GET /fine_collections/1.json
  def show
  end

  # GET /fine_collections/new
  def new
    @fine_collection = FineCollection.new
  end

  # GET /fine_collections/1/edit
  def edit
  end

  # POST /fine_collections
  # POST /fine_collections.json
  def create
    @fine_collection = FineCollection.new(fine_collection_params)

    respond_to do |format|
      if @fine_collection.save
        format.html { redirect_to @fine_collection, notice: 'Fine collection was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fine_collection }
      else
        format.html { render action: 'new' }
        format.json { render json: @fine_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fine_collections/1
  # PATCH/PUT /fine_collections/1.json
  def update
    respond_to do |format|
      if @fine_collection.update(fine_collection_params)
        format.html { redirect_to @fine_collection, notice: 'Fine collection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fine_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fine_collections/1
  # DELETE /fine_collections/1.json
  def destroy
    @fine_collection.destroy
    respond_to do |format|
      format.html { redirect_to fine_collections_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fine_collection
      @fine_collection = FineCollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fine_collection_params
      params.require(:fine_collection).permit(:fine_amount, :due_date, :return_date)
    end
end
