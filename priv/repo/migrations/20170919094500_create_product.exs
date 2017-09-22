defmodule Newsline.Repo.Migrations.CreateProduct do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :title, :string
      add :body, :text

      timestamps()
    end

  end
end
