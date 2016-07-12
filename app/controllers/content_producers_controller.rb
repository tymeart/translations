class ContentProducersController < ApplicationController
  before_action :set_content_producer, only: [:show, :edit, :update, :destroy]

  # GET /content_producers
  # GET /content_producers.json
  def index
    @content_producers = ContentProducer.all
  end

  # GET /content_producers/1
  # GET /content_producers/1.json
  def show
  end

  # GET /content_producers/new
  def new
    @content_producer = ContentProducer.new
  end

  # GET /content_producers/1/edit
  def edit
  end

  # POST /content_producers
  # POST /content_producers.json
  def create
    @content_producer = ContentProducer.new(content_producer_params)

    respond_to do |format|
      if @content_producer.save
        format.html { redirect_to @content_producer, notice: 'Content producer was successfully created.' }
        format.json { render :show, status: :created, location: @content_producer }
      else
        format.html { render :new }
        format.json { render json: @content_producer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /content_producers/1
  # PATCH/PUT /content_producers/1.json
  def update
    respond_to do |format|
      if @content_producer.update(content_producer_params)
        format.html { redirect_to @content_producer, notice: 'Content producer was successfully updated.' }
        format.json { render :show, status: :ok, location: @content_producer }
      else
        format.html { render :edit }
        format.json { render json: @content_producer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_producers/1
  # DELETE /content_producers/1.json
  def destroy
    @content_producer.destroy
    respond_to do |format|
      format.html { redirect_to content_producers_url, notice: 'Content producer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_producer
      @content_producer = ContentProducer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def content_producer_params
      params.require(:content_producer).permit(:name)
    end
end
