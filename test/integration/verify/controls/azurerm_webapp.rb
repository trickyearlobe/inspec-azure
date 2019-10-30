resource_group = attribute('resource_group', value: nil)
webapp_name = attribute('webapp_name', value: nil)

control 'azurerm_webapp' do
  describe azurerm_webapp(resource_group: resource_group, name: webapp_name) do
    it { should have_identity }
    its('properties') { should have_attributes(httpsOnly: true) }
  end
end
