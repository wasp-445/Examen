class Apartment < ApplicationRecord
  belongs_to :building

  validate :depto_unico
  validates :numero_departamento, presence: true
  validates :building_id, presence: true

  private 

  def depto_unico
    encontrados = self.building.apartments.select {|depto| depto.numero_departamento == self.numero_departamento}
    if encontrados.count == 1
      self.errors.add(:errors_duplicados,"El número de departamento ya existe")
    end 
  end
end