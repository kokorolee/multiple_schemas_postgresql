class Tenant < ApplicationRecord
  after_create :create_tenant
  has_many :users

  private

    def create_tenant
      Apartment::Tenant.create(subdomain)
    end
end
