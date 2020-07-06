defmodule Hopscotchd.Repo.Migrations.CreateBreweryTags do
  use Ecto.Migration

  def change do
    create table(:brewery_tags) do
      add :brewery_id, references(:breweries, on_delete: :nothing), primary_key: true
      add :tag_id, references(:tags, on_delete: :nothing), primary_key: true

      timestamps()
    end

    create index(:brewery_tags, [:brewery_id])
    create index(:brewery_tags, [:tag_id])
  end
end
