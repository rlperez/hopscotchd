defmodule Hopscotchd.Repo.Migrations.CreateBreweryTags do
  use Ecto.Migration

  def change do
    create table(:brewery_tags) do
      add :type, :string

      timestamps()
    end

    create unique_index(:brewery_tags, [:type])
  end
end
