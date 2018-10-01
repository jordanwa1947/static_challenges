require 'rack'

class ChallengeOne
  def self.call(env)
    case env["PATH_INFO"]
    when '/' then index
    else
      error
    end
  end

  def self.index
    ['200', {'Content-Type' => 'text/html'}, [File.read('./web_page/views/index.html')]]
  end

  def self.error
    ['404', {'Content-Type' => 'text/html'}, [File.read('./web_page/views/error.html')]]
  end
end
