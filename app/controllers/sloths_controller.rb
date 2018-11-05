class SlothsController < ApplicationController
  before_action :set_sloth, only: [:show, :edit, :update, :destroy]

  # GET /sloths
  # GET /sloths.json
  def index
    @sloths = Sloth.all
  end

  # GET /sloths/1
  # GET /sloths/1.json
  def show
  end

  # GET /sloths/new
  def new
    @sloth = Sloth.new
  end

  # GET /sloths/1/edit
  def edit
  end

  # POST /sloths
  # POST /sloths.json
  def create
    @sloth = Sloth.new(sloth_params)

    respond_to do |format|
      if @sloth.save
        format.html { redirect_to @sloth, notice: 'Sloth was successfully created.' }
        format.json { render :show, status: :created, location: @sloth }
      else
        format.html { render :new }
        format.json { render json: @sloth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sloths/1
  # PATCH/PUT /sloths/1.json
  def update
    respond_to do |format|
      if @sloth.update(sloth_params)
        format.html { redirect_to @sloth, notice: 'Sloth was successfully updated.' }
        format.json { render :show, status: :ok, location: @sloth }
      else
        format.html { render :edit }
        format.json { render json: @sloth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sloths/1
  # DELETE /sloths/1.json
  def destroy
    @sloth.destroy
    respond_to do |format|
      format.html { redirect_to sloths_url, notice: 'Sloth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sloth
      @sloth = Sloth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sloth_params
      params.require(:sloth).permit(:color, :paws, :fluffiness)
    end
end
