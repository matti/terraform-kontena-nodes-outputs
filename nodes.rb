require 'json'

params = JSON.parse(STDIN.read)

node_names = `kontena node ls -q`.split("\n")


names, public_ips, private_ips, overlay_ips = [], [], [], []
for node_name in node_names do
  output = `kontena node show #{node_name}`
  names << node_name
  public_ips << output.match(/^\s\spublic ip: (.*)$/)[1]
  private_ips << output.match(/^\s\sprivate ip: (.*)$/)[1]
  overlay_ips << output.match(/^\s\soverlay ip: (.*)$/)[1]
end

result = {
  names: names.join(","),
  public_ips: public_ips.join(","),
  private_ips: private_ips.join(","),
  overlay_ips: overlay_ips.join(",")
}

puts result.to_json
