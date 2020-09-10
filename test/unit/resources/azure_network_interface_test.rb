require_relative 'helper'
require 'azure_network_interface'

class AzureNetworkInterfaceConstructorTest < Minitest::Test
  def test_empty_param_not_ok
    assert_raises(ArgumentError) { AzureNetworkInterface.new }
  end

  # resource_provider should not be allowed.
  def test_resource_provider_not_ok
    assert_raises(ArgumentError) { AzureNetworkInterface.new(resource_provider: 'some_type') }
  end

  def test_resource_group
    assert_raises(ArgumentError) { AzureNetworkInterface.new(name: 'my-name') }
  end
end
