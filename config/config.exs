# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hopscotchd,
  ecto_repos: [Hopscotchd.Repo]

# Configures the endpoint
config :hopscotchd, HopscotchdWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "AZF0uNwRiFj1cBGwAPOVkAYyhc9PoTxNXwkTtGGUwxX+t10vBSsuG3mlF8GxjCrp",
  render_errors: [view: HopscotchdWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Hopscotchd.PubSub,
  live_view: [signing_salt: "p8JXt4sJ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :hopscotchd, :pow,
       user: Hopscotchd.Users.User,
       repo: Hopscotchd.Repo,
       extensions: [PowResetPassword, PowEmailConfirmation],
       controller_callbacks: Pow.Extension.Phoenix.ControllerCallbacks,
       mailer_backend: HopscotchdWeb.Pow.Mailer,
       web_mailer_module: HopscotchdWeb

config :hopscotchd, :pow_assent,
       providers: [
         google: [
           client_id: "REPLACE_WITH_CLIENT_ID",
           client_secret: "REPLACE_WITH_CLIENT_SECRET",
           strategy: Assent.Strategy.Google
         ],
         facebook: [
          client_id: "REPLACE_WITH_CLIENT_ID",
          client_secret: "REPLACE_WITH_CLIENT_SECRET",
          strategy: Assent.Strategy.Facebook
         ],
         instagram: [
          client_id: "REPLACE_WITH_CLIENT_ID",
          client_secret: "REPLACE_WITH_CLIENT_SECRET",
          strategy: Assent.Strategy.Instagram
         ],
         twitter: [
          client_id: "REPLACE_WITH_CLIENT_ID",
          client_secret: "REPLACE_WITH_CLIENT_SECRET",
          strategy: Assent.Strategy.Twitter
         ]
       ]
