class ListsController < ProtectedController
  # change to ProctectedController
  before_action :set_list, only: [:index, :show, :update, :destroy]

  # GET /lists
  # GET /lists.json
  def index
    @lists = List.all

    render json: @lists
  end

  # GET /lists/1
  # GET /lists/1.json
  def show
    render json: List.find(params[:id])
  end

  # POST /lists
  # POST /lists.json
  def create
    @list = current_user.lists.new(list_params)

    if @list.save
      render json: @list, status: :created, location: @list
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lists/1
  # PATCH/PUT /lists/1.json
  def update
    if @list.update(list_params)
      head :no_content
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    @list.destroy

    head :no_content
  end

  private

  def set_list
    @list = current_user.lists.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:title, :user_id)
  end
end
