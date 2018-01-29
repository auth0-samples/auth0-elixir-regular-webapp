defmodule PortalWeb.UserController do
  use PortalWeb, :controller

  plug(:secure)

  defp secure(conn, _params) do
    user = get_session(conn, :current_user)
    case user do
      nil ->
        conn
        |> redirect(to: "/auth/auth0")
        |> halt()

      _ ->
        conn
        |> assign(:current_user, user)
    end
  end

  def index(conn, _params) do
    user = get_session(conn, :current_user)
    assigns = %{user: user}
    render(conn, "index.html", assigns)
  end

end
