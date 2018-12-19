defmodule MealPlanner.Repo do
  use Ecto.Repo,
    otp_app: :meal_planner,
    adapter: Ecto.Adapters.Postgres
end
