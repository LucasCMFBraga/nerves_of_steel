defmodule JsonApiWeb.GpioController do
  use JsonApiWeb, :controller

  def write(conn, params) do
    render(conn, "write.json", status: GpioControl.write(String.to_integer(Map.get(params,"gpio")),  String.to_integer(Map.get(params,"value"))))
  end

  def read(conn, params) do
    render(conn, "read.json", status: GpioControl.read(String.to_integer(Map.get(params,"gpio"))))
  end

  def setup(conn, params) do
    render(conn, "setup.json", status: GpioControl.setup(String.to_integer(Map.get(params,"gpio")), Map.get(params,"mode")))
  end

end

    