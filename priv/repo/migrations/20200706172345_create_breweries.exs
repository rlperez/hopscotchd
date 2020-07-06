defmodule Hopscotchd.Repo.Migrations.CreateBreweries do
  use Ecto.Migration

  def change do
    create table(:breweries) do
      add :name, :string
      add :street, :string
      add :city, :string
      add :state, :string
      add :postal_code, :string
      add :country, :string
      add :website_url, :string
      add :longitude, :decimal
      add :latitude, :decimal
      add :type, references(:brewery_types, on_delete: :nothing)

      timestamps()
    end

    create unique_index(:breweries, [:name])
    create index(:breweries, [:type])
  end
end
