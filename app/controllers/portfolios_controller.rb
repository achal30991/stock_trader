class PortfoliosController < ApplicationController
  def index
    @portfolios = Portfolio.all

    render("portfolio_templates/index.html.erb")
  end

  def show
    @comment = Comment.new
    @stock = Stock.new
    @portfolio = Portfolio.find(params.fetch("id_to_display"))

    render("portfolio_templates/show.html.erb")
  end

  def new_form
    @portfolio = Portfolio.new

    render("portfolio_templates/new_form.html.erb")
  end

  def create_row
    @portfolio = Portfolio.new

    @portfolio.stock_name = params.fetch("stock_name")
    @portfolio.user_id = params.fetch("user_id")

    if @portfolio.valid?
      @portfolio.save

      redirect_back(:fallback_location => "/portfolios", :notice => "Portfolio created successfully.")
    else
      render("portfolio_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @portfolio = Portfolio.find(params.fetch("prefill_with_id"))

    render("portfolio_templates/edit_form.html.erb")
  end

  def update_row
    @portfolio = Portfolio.find(params.fetch("id_to_modify"))

    @portfolio.stock_name = params.fetch("stock_name")
    @portfolio.user_id = params.fetch("user_id")

    if @portfolio.valid?
      @portfolio.save

      redirect_to("/portfolios/#{@portfolio.id}", :notice => "Portfolio updated successfully.")
    else
      render("portfolio_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @portfolio = Portfolio.find(params.fetch("id_to_remove"))

    @portfolio.destroy

    redirect_to("/portfolios", :notice => "Portfolio deleted successfully.")
  end
end
