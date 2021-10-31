require 'base64';
require 'net/http';
require 'uri';
require 'json';
require 'time';

ENCODED = 'aHR0cDovL2ltYWdlcy5waW1wcm9sbC5jb20vc2MvMC8';#http


def send_out(url_to_use)
  response = nil;
  url =URI(url_to_use);
  connection = Net::HTTP.new(url.host);
  #connection.use_ssl = true;
  
  #request = net_http_class.new(url);
  request = Net::HTTP::Get.new(url);#Net::HTTP::Get
  request['User-Agent'] = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Edge/14.14393";
  
  begin
    response = connection.request(request);
  rescue StandardError => e#*ALL_NET_HTTP_ERRORS => e
    print "\u{0a 1f691 20 20 20 1f692 20 20 20 1f691 20 20 20 0a}"#🚒
    print "#{e.class} occured at: #{Time.now}";
    print "\u{0a 1f692 20 20 20 1f691 20 20 20 1f692 20 20 20 0a}"#🚑
  ensure
    return response;
  end#begin
end#def

#1f441
def 👁(🔖)
  system("firefox -private-window #{🔖}");
end

def build_url(🎲 , 🔗, 🏷='/turk/', 🎰 = '150.jpg')
  return (🔗 + 🎲.to_s[0..-4] + '/' + 🎲.to_s + 🏷.to_s+ 🎰.to_s);
end


#🎯 = Base64.decode64(ENCODED);#1f3af
🔗 = Base64.decode64(ENCODED);#1f517
🏷 = '';#1f3f7
🎰 = '';#1f3b0

hit = nil;
until hit do
  code = nil;
  🎲 = rand(100..139_000);#1f3b2
  🔖 = build_url(🎲 , 🔗,'/glam/','073.jpg');#1f516
  pp "checking on #{🎲}";
  resp = send_out(🔖);
  code = resp.code if resp;#avoid calls on nil object
  hit = true if code=='200';
  pp resp.uri.to_s if hit;
  👁(build_url(🎲-2, 🔗,'/glam/','073.jpg')) if hit;
  👁(build_url(🎲-1, 🔗,'/glam/','073.jpg')) if hit;
  👁(resp.uri.to_s) if hit;
  👁(build_url(🎲+1, 🔗,'/glam/','073.jpg')) if hit;
  👁(build_url(🎲+2, 🔗,'/glam/','073.jpg')) if hit;
end#until

#binding.irb;


