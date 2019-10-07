defmodule Processes do
  def run_sync do
    for i <- 1..100 do
      work(i)
    end
  end

  def run_async do
    for i <- 1..100_000 do
      spawn(fn ->
        work(i)
       end)
      |> IO.inspect()
    end
  end


  def work(num) do
    Process.sleep(100)
    IO.puts(num)
  end
end
