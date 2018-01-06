require 'discourse_api'

client = DiscourseApi::Client.new("http://localhost:3000")
client.api_key="XXXX"
client.api_username="XXXX"

response = client.category(5)

response = client.update_category({:id => response["id"],
                                  :name => response["name"],
                                  :color => response["color"],
                                  :text_color => response["text_color"],
                                  :permissions => {"GroupName" => 1}})

puts response