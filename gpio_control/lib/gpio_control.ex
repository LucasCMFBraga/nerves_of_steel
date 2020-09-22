defmodule GpioControl do
  
  @moduledoc """
  Documentation for `GpioControl`.
  """

  @doc """

  """
  def read(gpio_n) do
    {:ok, gpio} = Circuits.GPIO.open(gpio_n, :input)
    value = Circuits.GPIO.read(gpio)
    %{"gpio" => gpio_n, "value" => value}
  end

  def write(gpio_n,value) do
    {:ok, gpio} = Circuits.GPIO.open(gpio_n, :output)
    Circuits.GPIO.write(gpio, value)
    %{"gpio" => gpio_n, "value" => value}
  end

  def setup(gpio_n,pull) do
    {:ok, gpio} = Circuits.GPIO.open(gpio_n, :input)
    Circuits.GPIO.set_pull_mode(gpio, String.to_atom(pull))
    %{"gpio" => gpio_n, "mode" => pull}
  end
  

end
