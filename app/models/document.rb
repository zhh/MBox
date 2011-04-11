class Document < ActiveRecord::Base
  belongs_to :document_type

  self.per_page = 2

  validates :title, :presence => true
  validates :document_type_id, :presence => true
  validates :document_type_id, :inclusion => DocumentType.all.map{ |a| a.id }

end
