module CitiesHelper
  def city_url id
    "/cities/show/#{id}"
  end

  def city_index_url
    '/cities'
  end

  def city_new_url
    '/cities/new'
  end

  def city_edit_url id
    "/cities/edit/#{id}"
  end

  def city_delete_url id
    "/cities/delete/#{id}"
  end
end
