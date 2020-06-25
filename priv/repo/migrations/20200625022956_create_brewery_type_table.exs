defmodule Hopscotchd.Repo.Migrations.CreateBreweryTypeTable do
  use Ecto.Migration

  def change do
    create table(:tags) do
      add :type, :string, null: false, size: 32
    end
  end
end
