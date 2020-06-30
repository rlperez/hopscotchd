defmodule Hopscotchd.Brewery.BreweryType do
  use Ecto.Schema
  import Ecto.Changeset

  schema "brewery_types" do
    field :type, :string

    timestamps()
  end

  @doc false
  def changeset(brewery_type, attrs) do
    brewery_type
    |> cast(attrs, [:type])
    |> validate_required([:type])
    |> unique_constraint(:type)
  end
end
