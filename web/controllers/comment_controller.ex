defmodule Newsline.CommentController do
  use Newsline.Web, :controller
  alias Newsline.Product

  def create(conn, %{"comment" => comment_params, "product_id"=>product_id}) do
    product = Repo.get(Product, product_id)
    comment_changeset = Ecto.build_assoc(product, :comments, body: comment_params["body"])
    Repo.insert(comment_changeset)

    conn
    |> put_flash(:info, "Comment created successfully.")
    |> redirect(to: product_path(conn, :show, product))
  end

end
