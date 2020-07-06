defmodule Hopscotchd.Brewery.Brewery do
  use Ecto.Schema
  import Ecto.Changeset

  schema "breweries" do
    field :city, :string
    field :country, :string
    field :latitude, :decimal
    field :longitude, :decimal
    field :name, :string
    field :postal_code, :string
    field :state, :string
    field :street, :string
    field :website_url, :string
    field :type, :id

    timestamps()
  end

  @doc false
  def changeset(brewery, attrs) do
    brewery
    |> cast(attrs, [:name, :street, :city, :state, :postal_code, :country, :website_url, :longitude, :latitude])
    |> validate_required([:name, :street, :city, :state, :postal_code, :country, :website_url, :longitude, :latitude])
    |> unique_constraint(:name)
  end
end
