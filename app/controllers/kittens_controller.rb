class KittensController < ApplicationController
  before_action :set_kitten, only: %i[show edit update destroy]

  # GET /kittens or /kittens.json
  def index
    @kittens = Kitten.all
  end

  # GET /kittens/1 or /kittens/1.json
  def show
  end

  # GET /kittens/new
  def new
    @kitten = Kitten.new
  end

  # GET /kittens/1/edit
  def edit
  end

  # POST /kittens or /kittens.json
  def create
    @kitten = Kitten.new(kitten_params)

    if @kitten.save
      redirect_to kitten_url(@kitten),
                  notice: "Kitten #{@kitten.name} was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /kittens/1 or /kittens/1.json
  def update
    if @kitten.update(kitten_params)
      redirect_to kitten_url(@kitten),
                  notice: "Kitten #{@kitten.name} was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /kittens/1 or /kittens/1.json
  def destroy
    @kitten.destroy

    redirect_to kittens_url,
                notice: "Kitten #{@kitten.name} was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_kitten
    @kitten = Kitten.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
