module CampSitesHelper
  def camp_site_url id
    "/camp_sites/show/#{id}"
  end

  def camp_sites_url
    '/camp_sites'
  end

  def camp_site_new_url
    '/camp_sites/new'
  end

  def camp_site_edit_url id
    "/camp_sites/edit/#{id}"
  end

  def camp_site_delete_url id
    "/camp_sites/delete/#{id}"
  end
end
