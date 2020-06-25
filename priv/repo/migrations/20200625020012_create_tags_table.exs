defmodule Hopscotchd.Repo.Migrations.CreateTagsTable do
  use Ecto.Migration

  def change do
    create table(:tags) do
      add :tag, :string, null: false, size: 32
    end

    create unique_index(:tags, [:tag], unique: true, name: :unique_tags_index)
  end
end
