defmodule MealPlannerWeb.PageController do
  use MealPlannerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
