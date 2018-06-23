module CountriesHelper
  def country_url id
    "/countries/show/#{id}"
  end

  def country_index_url
    '/countries'
  end

  def country_new_url
    '/countries/new'
  end

  def country_edit_url id
    "/countries/edit/#{id}"
  end

  def country_delete_url id
    "/countries/delete/#{id}"
  end
end
