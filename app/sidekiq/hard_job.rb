class HardJob
  include Sidekiq::Job

  def perform(name, count)
    sleep(count)
    puts "Running " + name
  end
end
