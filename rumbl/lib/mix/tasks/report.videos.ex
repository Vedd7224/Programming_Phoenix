defmodule Mix.Tasks.Report.Videos do
  use Mix.Task
  import Ecto.Query
  alias Rumbl.Repo
  alias Rumbl.User

  @shortdoc "Report number of videos in each category"

  def run(_) do
    Mix.Task.run "app.start"

    Repo.one(
      from u in User,
        select: count(u.id)
    )
    |> IO.inspect
  end  
end
