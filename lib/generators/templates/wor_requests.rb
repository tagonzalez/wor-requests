Wor::Requests.configure do |config|
  config.logger = Rails.logger

  if Rails.env.test?
    LoggerMock = Struct.new(nil) do
      def info(str); end

      def error(str); end
    end
    config.logger = LoggerMock.new
  end
end
