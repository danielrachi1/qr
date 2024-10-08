defmodule Qr.Repo do
  use Ecto.Repo,
    otp_app: :qr,
    adapter: Ecto.Adapters.Postgres
end
