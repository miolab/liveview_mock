defmodule MyAppWeb.PageController do
  use MyAppWeb, :controller

  def index(conn, _params) do
    render(
      conn,
      "index.html",
      hello_text: display_message()
    )
  end

  defp display_message() do
    # "Hello Typespecs!"
    1111
  end
end
