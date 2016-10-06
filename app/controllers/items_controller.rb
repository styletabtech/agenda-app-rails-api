class ItemsController < ProtectedController
  before_action :set_item, only: [:index, :show, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.items

    render json: @items
  end

  # GET /items/1
  # GET /items/1.json
  def show
    render json: List.find(params[:id])
  end

  # POST /items
  # POST /items.json
  def create
    @item = current_user.items.new(item_params)

    if @item.save
      render json: @item, status: :created, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    if @item.update(item_params)
      head :no_content
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy

    head :no_content
  end

  private

  def set_item
    @item = current_user.items.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :due_date, :priority, :list_id, :due_time)
  end
end
