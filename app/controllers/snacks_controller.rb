class SnacksController < ApplicationController

  # GET /snacks/1
  def show
    @snack = Snack.where(created_at:
                         DateTime.now.midnight..DateTime.now.advance(days: 1).midnight).first
    @orders = []
    @grouped_orders = []
    @orders = @snack.orders     if @snack
    @grouped_orders = grouped_orders if !@orders.empty?
  end

  # GET /snacks/new
  def new
    @snack = Snack.new
  end

  # GET /snacks/1/edit
  def edit
  end

  # POST /snacks
  def create
    @snack = Snack.new(snack_params)
    if @snack.save
      redirect_to :root
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /snacks/1
  def update
    if @snack.update(snack_params)
      redirect_to @snack, notice: 'Snack was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def place_order
    params[:order].permit!
    params[:order][:name] = params[:custom_snack_name] if !params[:custom_snack_name].blank?
    Order.create(params[:order])
    redirect_to :root
  end

  # DELETE /snacks/1
  def destroy
    @snack.destroy
    redirect_to snacks_url, notice: 'Snack was successfully destroyed.'
  end

  def destroy_order
    Order.find(params[:id]).destroy
    redirect_to :root
  end

  private
    def snack_params
      params[:snack].permit!
    end

    def grouped_orders
      @orders.group_by{|o| o.name}
    end

end
