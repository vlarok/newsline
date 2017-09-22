defmodule Newsline.PageController do
  use Newsline.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
