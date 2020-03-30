Member.create(number: 1, name: "Taro", administrator: true)
table_names = %w(member)
table_names.each do |table_name|
  path = Rails.root.join("db/seeds", Rails.env, table_name + ".rb")
  if File.exist?(path)
    puts "Creating #{table_name}..."
    require patfh
  end
end
