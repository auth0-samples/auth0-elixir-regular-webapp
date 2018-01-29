defmodule PortalWeb.PageController do
  use PortalWeb, :controller

  def index(conn, _params) do
    assigns = %{
      current_user: get_session(conn, :current_user)
    }
    render conn, "index.html", assigns
  end
end
