class DocumentType < ActiveRecord::Base
  has_many :documents

  self.per_page = 2

  validates :name, :presence => true

  def self.to_array
    pas = DocumentType.all
    document_types = []
    pas.each do |pa|
      document_types << [pa.name, pa.id]
    end
    document_types
  end
end
