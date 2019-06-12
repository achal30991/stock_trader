class ExpertsController < ApplicationController
  def index
    @experts = Expert.page(params[:page]).per(10)

    render("expert_templates/index.html.erb")
  end

  def show
    @expert = Expert.find(params.fetch("id_to_display"))

    render("expert_templates/show.html.erb")
  end
end
