class Registro < ApplicationRecord
  # Bulk upload companies
  require 'csv'
  def self.import(file)
    if(file)
      CSV.foreach(file.path, headers: true) do |row|
          company_hash = Registro.new
          company_hash.guia = row[0]
          company_hash.ref = row[1]
          company_hash.estado = row[2]
          company_hash.fecha_salida = row[3]
          company_hash.promesa_de_entrega = row[4]
          company_hash.dias_de_retraso = row[5]
          company_hash.intentos_de_entrega = row[6]
          company_hash.nombre = row[7]
          company_hash.direccion = row[8]
          company_hash.informacion_adicional = row[9]
          company_hash.adicional = row[10]
          company_hash.ind_inter = row[11]
          company_hash.comentarios = row[12]

          company_hash.save
      end
    end
  end
end
