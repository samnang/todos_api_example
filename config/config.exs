# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :todos_api_example,
  ecto_repos: [TodosApiExample.Repo]

# Configures the endpoint
config :todos_api_example, TodosApiExample.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "K5RZmEMu7PAUYgv3rvWM/5+cgZe9Lkx6yarOBmMsfzNuF8/GqtIlnTY/Yw0+6dqn",
  render_errors: [view: TodosApiExample.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TodosApiExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
