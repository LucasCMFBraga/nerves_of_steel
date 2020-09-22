defmodule JsonApiWeb.Router do
  use JsonApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", JsonApiWeb do
    pipe_through :api

    get "/led/enable", LedController, :enable
    get "/led/disable", LedController, :disable

    get "/gpio/:gpio/read", GpioController, :read
    get "/gpio/:gpio/write/:value", GpioController, :write
    get "/gpio/:gpio/setup/:mode", GpioController, :setup

  end
end
