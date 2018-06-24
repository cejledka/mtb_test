module RegionsHelper
  def region_url id
    "/regions/show/#{id}"
  end

  def region_index_url
    '/regions'
  end

  def region_new_url
    '/regions/new'
  end

  def region_edit_url id
    "/regions/edit/#{id}"
  end

  def region_delete_url id
    "/regions/delete/#{id}"
  end
end
