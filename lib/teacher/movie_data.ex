defmodule Teacher.MovieData do
  import Plug.Conn
  import Ecto.Query, only: [from: 2]

  alias Teacher.Repo
  alias TeacherWeb.Movie

  def movie_total(conn, _opts) do
    movie_total = Repo.one(from m in Movie, select: count("*"))
    assign(conn, :movie_total, movie_total)
  end

end
