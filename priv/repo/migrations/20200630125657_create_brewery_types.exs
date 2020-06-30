defmodule Hopscotchd.Repo.Migrations.CreateBreweryTypes do
  use Ecto.Migration

  def change do
    create table(:brewery_types) do
      add :type, :string, null: false, size: 32

      timestamps()
    end

    create unique_index(:brewery_types, [:type])
  end
end
