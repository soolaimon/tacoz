class IndexWorker
  include Sidekiq::Worker

  def perform(id, record_class_name)
    @record = record_class_name.safe_constantize.find(id)
    @record.update_pg_search_document
  end

end