Deface::Override.new(
  virtual_path: 'spree/layouts/admin',
  name: 'enquiries_tab',
  insert_bottom: '#main-sidebar',
  partial: 'spree/admin/shared/enquiries_tab'
)
