defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate *  8.0
  end
    # Please implement the daily_rate/1 function

  def apply_discount(before_discount, discount) do
    before_discount * (100 - discount)/100.0
  end
    # Please implement the apply_discount/2 function

  def monthly_rate(hourly_rate, discount) do
      monthly_rate_before_discount = daily_rate(hourly_rate) * 22.0
      apply_discount(monthly_rate_before_discount, discount)çç
      |> Float.ceil(0)
      |> trunc()
  end
    # Please implement the monthly_rate/2 function

  def days_in_budget(budget, hourly_rate, discount) do
    daily_rate_after_discount = daily_rate(hourly_rate) |> apply_discount(discount)
    budget / daily_rate_after_discount
    |> Float.floor(1)
    # Please implement the dn_budget/3 function
  end
end
