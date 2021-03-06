class FloatingIp < ActiveRecord::Base
  include NewWithTypeStiMixin

  belongs_to :ext_management_system, :foreign_key => :ems_id, :class_name => "ManageIQ::Providers::CloudManager"
  belongs_to :vm
  belongs_to :cloud_tenant
  belongs_to :network_port
  belongs_to :network_router

  def self.available
    where(:vm_id => nil)
  end
end
