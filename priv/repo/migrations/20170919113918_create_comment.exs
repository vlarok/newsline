defmodule Newsline.Repo.Migrations.CreateComment do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :body, :text
      add :product_id, references(:products, on_delete: :delete_all)

      timestamps()
    end
    create index(:comments, [:product_id])

  end
end
