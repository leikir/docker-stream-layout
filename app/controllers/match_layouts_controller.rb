class MatchLayoutsController < ApplicationController
  before_action :set_match_layout, only: [:show, :content, :edit, :update, :destroy]

  # GET /match_layouts
  # GET /match_layouts.json
  def index
    @match_layouts = MatchLayout.all
  end

  # GET /match_layouts/1
  # GET /match_layouts/1.json
  def show
    # render :show, layout: 'stream'
  end

  # GET /match_layouts/1/content
  def content
    render :content, layout: false
  end

  # GET /match_layouts/new
  def new
    @match_layout = MatchLayout.new
  end

  # GET /match_layouts/1/edit
  def edit
  end

  # POST /match_layouts
  # POST /match_layouts.json
  def create
    @match_layout = MatchLayout.new(match_layout_params)

    respond_to do |format|
      if @match_layout.save
        format.html { redirect_to @match_layout, notice: 'Match layout was successfully created.' }
        format.json { render :show, status: :created, location: @match_layout }
      else
        format.html { render :new }
        format.json { render json: @match_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /match_layouts/1
  # PATCH/PUT /match_layouts/1.json
  def update
    respond_to do |format|
      if @match_layout.update(match_layout_params)
        format.html { redirect_to @match_layout, notice: 'Match layout was successfully updated.' }
        format.json { render :show, status: :ok, location: @match_layout }
      else
        format.html { render :edit }
        format.json { render json: @match_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /match_layouts/1
  # DELETE /match_layouts/1.json
  def destroy
    @match_layout.destroy
    respond_to do |format|
      format.html { redirect_to match_layouts_url, notice: 'Match layout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match_layout
      @match_layout = MatchLayout.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def match_layout_params
      params.require(:match_layout).permit(:is_playing, :player1_name, :player2_name, :match_name, :player1_score, :player2_score)
    end
end
