module Visible
  extend ActiveSupport::Concern
  VAILD_STATUSES = ['public', 'private', 'archived']
  included do
    validates :status, inclusion: { in: VAILD_STATUSES}
  end
  def archived?
    status == 'archived'
  end
end