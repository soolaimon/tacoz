class ContactMailerWorker
  include Sidekiq::Worker

  def perform(params)
    ContactMailer.contact_request(params).deliver
  end
end