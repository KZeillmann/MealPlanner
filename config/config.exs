# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :meal_planner,
  ecto_repos: [MealPlanner.Repo]

# Configures the endpoint
config :meal_planner, MealPlannerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YjotRk32Ts1g1HRW/F4fh+2171WSee3S1H9OiSDs1bObR8qy+3YwxeFBKJ36HnJ5",
  render_errors: [view: MealPlannerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MealPlanner.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
