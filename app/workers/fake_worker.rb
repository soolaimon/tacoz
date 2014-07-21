class FakeWorker
  include Sidekiq::Worker

  def perform
    puts "\n\nRunning a long task"
    sleep 30
    puts "Almost done!!"
    sleep 2
    puts "DONE!!! ZOMG! O_o\n\n"
  end

end