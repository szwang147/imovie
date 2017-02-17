module MoviesHelper
  def render_movie_image_present(movie)
    if movie.image.present?
      image_tag(movie.image.thumb.url, class:"thumbnail")
    else
      image_tag("http://img.wmtp.net/wp-content/uploads/52eb1aac1ae1b176.jpg600x600.jpg", class:"thumbnail")
    end
  end
end
