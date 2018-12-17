defmodule CardTable.Repo do
  use Ecto.Repo,
    otp_app: :card_table,
    adapter: Ecto.Adapters.Postgres
end
