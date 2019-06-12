class ExpertsController < ApplicationController
  def index
    @experts = Expert.all

    render("expert_templates/index.html.erb")
  end

  def show
    @expert = Expert.find(params.fetch("id_to_display"))

    render("expert_templates/show.html.erb")
  end
end
