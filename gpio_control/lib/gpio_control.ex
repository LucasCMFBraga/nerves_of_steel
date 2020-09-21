defmodule GpioControl do
  
  @moduledoc """
  Documentation for `GpioControl`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> GpioControl.hello()
      :world

  """

  def startup(n_gpio\\"" ,gpio_list\\"") when n_gpio >= 27  do
    gpio=gpio_list
    gpio
  end

  def startup(n_gpio,gpio_list) when n_gpio > 8 do
  {:ok, gpio} = Circuits.GPIO.open(n_gpio, :input)
  gpio_list=Map.put(gpio_list,"gpio#{n_gpio}",gpio)
   
  startup n_gpio+1,gpio_list 
  end

  def startup(n_gpio,gpio_list) do
  {:ok, gpio} = Circuits.GPIO.open(n_gpio, :input)
  Circuits.GPIO.set_pull_mode(gpio, :pullup)
  gpio_list=Map.put(gpio_list,"gpio#{n_gpio}",gpio)

  startup n_gpio+1,gpio_list
  end

  def read() do

  end

  def write() do

  end

  def setup() do

  end
  
  def info() do
    gpio_info=[%{}]

  end

end
