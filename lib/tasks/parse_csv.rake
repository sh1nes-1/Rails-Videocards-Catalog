require 'csv'

task parse_csv: :environment do
  csv_content = File.read('storage/csv/data.csv')
  csv         = CSV.parse(csv_content, :headers => true)

  csv.each do |row|
    manufacturer = Manufacturer.where(:name => row['manufacturer']).first_or_create
    video_card = VideoCard.where(
      :manufacturer_id  => manufacturer.id,
      :gpu_name         => row['gpu_name'],
      :memory_capacity  => row['memory_capacity'],
      :memory_frequency => row['memory_frequency'],
      :memory_type      => row['memory_type']
      ).first_or_create

    VideoCardProduct.create(
      :video_card_id => video_card.id,
      :title         => row['title'],
      :min_price     => row['min_price'],
      :max_price     => row['max_price'],
      :image_url     => row['img_url'],
      :reference_url => row['reference_url']
    )
  end
end