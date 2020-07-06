defmodule Hopscotchd.Brewery.BreweryTag do
  use Ecto.Schema
  import Ecto.Changeset

  schema "brewery_tags" do
    field :brewery_id, :id
    field :tag_id, :id

    timestamps()
  end

  @doc false
  def changeset(brewery_tag, attrs) do
    brewery_tag
    |> cast(attrs, [])
    |> validate_required([])
  end
end
