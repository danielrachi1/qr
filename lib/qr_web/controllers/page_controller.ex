defmodule QrWeb.PageController do
  use QrWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
