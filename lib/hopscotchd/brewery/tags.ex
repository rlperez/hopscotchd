defmodule Hopscotchd.Brewery.Tags do
  use Ecto.Schema
  import Ecto.Changeset

  schema "brewery_tags" do
    field :type, :string

    timestamps()
  end

  @doc false
  def changeset(tags, attrs) do
    tags
    |> cast(attrs, [:type])
    |> validate_required([:type])
    |> unique_constraint(:type)
  end
end
