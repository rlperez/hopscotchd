defmodule Hopscotchd.Repo do
  use Ecto.Repo,
    otp_app: :hopscotchd,
    adapter: Ecto.Adapters.Postgres
end
