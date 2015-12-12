defmodule Physics.Rocketry do

  import Calcs
  import Physics.Laws

  def escape_velocity(:earth) do
    Planets.earth
      |> escape_velocity
  end

  def escape_velocity(planet) when is_map(planet) do
    planet
      |> calculate_escape
      |> to_km
      |> to_nearest_tenth
  end

  defp calculate_escape(%{mass: mass, radius: radius}) do
    2 * newtons_gravitational_constant * mass / radius
      |> square_root
  end

  def orbital_speed(height) do
    newtons_gravitational_constant * Planets.earth.mass  / orbital_radius(height)
      |> square_root
  end
  
  defp orbital_radius(height) do
    Planets.earth.radius + (height |> to_m)
  end
end