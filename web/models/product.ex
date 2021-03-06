defmodule Newsline.Product do
  use Newsline.Web, :model

  schema "products" do
    field :title, :string
    field :body, :string
    has_many :comments, Newsline.Comment

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :body])
    |> validate_required([:title, :body])
  end
end
