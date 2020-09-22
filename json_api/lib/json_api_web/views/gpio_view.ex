defmodule JsonApiWeb.GpioView do
  use JsonApiWeb, :view

  def render("write.json", %{status: status}) do
    %{
      gpio: status["gpio"], 
      value: status["value"]
    }
  end

  def render("read.json", %{status: status}) do
    %{
      gpio: status["gpio"], 
      value: status["value"]
    }
  end

  def render("setup.json", %{status: status}) do
    %{
      gpio: status["gpio"],
      pull_mode: status["mode"]
    }
    
  end
end
