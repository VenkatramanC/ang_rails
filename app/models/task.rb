class Task < ApplicationRecord

  def link
    Rails.application.routes.url_helers.task_path(self)
  end
end
