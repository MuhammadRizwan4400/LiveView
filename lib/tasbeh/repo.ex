defmodule Tasbeh.Repo do
  use Ecto.Repo,
    otp_app: :tasbeh,
    adapter: Ecto.Adapters.Postgres
end
