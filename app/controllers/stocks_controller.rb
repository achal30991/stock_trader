class StocksController < ApplicationController
  def index
    @stocks = Stock.all

    render("stock_templates/index.html.erb")
  end

  def show
    @stock = Stock.find(params.fetch("id_to_display"))

    render("stock_templates/show.html.erb")
  end

  def new_form
    @stock = Stock.new

    render("stock_templates/new_form.html.erb")
  end

  def create_row
    @stock = Stock.new

    @stock.portfolio_id = params.fetch("portfolio_id")
    @stock.stock_tickr = params.fetch("stock_tickr")

    if @stock.valid?
      @stock.save

      redirect_back(:fallback_location => "/stocks", :notice => "Stock created successfully.")
    else
      render("stock_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @stock = Stock.find(params.fetch("prefill_with_id"))

    render("stock_templates/edit_form.html.erb")
  end

  def update_row
    @stock = Stock.find(params.fetch("id_to_modify"))

    @stock.portfolio_id = params.fetch("portfolio_id")
    @stock.stock_tickr = params.fetch("stock_tickr")

    if @stock.valid?
      @stock.save

      redirect_to("/stocks/#{@stock.id}", :notice => "Stock updated successfully.")
    else
      render("stock_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_portfolio
    @stock = Stock.find(params.fetch("id_to_remove"))

    @stock.destroy

    redirect_to("/portfolios/#{@stock.portfolio_id}", notice: "Stock deleted successfully.")
  end

  def destroy_row
    @stock = Stock.find(params.fetch("id_to_remove"))

    @stock.destroy

    redirect_to("/stocks", :notice => "Stock deleted successfully.")
  end
end
