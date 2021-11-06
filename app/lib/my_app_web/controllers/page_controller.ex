defmodule MyAppWeb.PageController do
  use MyAppWeb, :controller

  def index(conn, _params) do
    render(
      conn,
      "index.html",
      hello_text: display_message(1111)
    )
  end

  def display_message(param), do: param
end
