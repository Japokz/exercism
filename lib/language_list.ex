defmodule LanguageList do
  def new() do
    []
    # Please implement the new/0 function
  end

  def add(list, language), do: [language | list]


    # Please implement the add/2 function

  def remove(_ | tail), do: tail
    # Please implement the remove/1 function

  def first(head | _), do: head
    # Please implement the first/1 function

  def count(list), do: length(list)
    # Please implement the count/1 function


  def functional_list?(list), do: Elixir in list
    # Please implement the functional_list?/1 function

end
