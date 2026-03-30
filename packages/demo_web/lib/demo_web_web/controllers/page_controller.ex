defmodule DemoWebWeb.PageController do
  use DemoWebWeb, :controller

  def home(conn, _params) do
    render(conn, :home, layout: false, demo_lib_banner: DemoLib.banner())
  end
end
