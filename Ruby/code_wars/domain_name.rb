def domain_name(url)
   require 'uri'

  uri = URI.parse(url)
  uri.host.split('.')[2] == 'com' ? uri.host.split('.')[1] : uri.host.split('.')[0]
end
