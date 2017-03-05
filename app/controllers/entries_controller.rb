class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]

  # GET /entries
  def index
    @entries = current_account.entries.all
  end

  # GET /entries/1
  def show
  end

  # GET /entries/new
  def new
    @entry = current_account.entries.build
    @entry.title = Time.now.strftime("%a %d %b %Y")
  end

  # GET /entries/1/edit
  def edit
  end

  # POST /entries
  def create
    @entry = current_account.entries.build(entry_params)

    if @entry.save
      redirect_to @entry, notice: 'Entry was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /entries/1
  def update
    if @entry.update(entry_params)
      redirect_to @entry, notice: 'Entry was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /entries/1
  def destroy
    @entry.destroy
    redirect_to entries_url, notice: 'Entry was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = current_account.entries.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def entry_params
      params.require(:entry).permit(:account_id, :content, :title, :thing_one, :thing_two, :thing_three, :thing_four, :thing_five)
    end
end
