# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@items = Item.create([{price: 17.0,  name: "Cranberry Soy Candle",  description: "Cranberries and orange slices blend with clove and cinnamon. The orange is a blend of citrus notes of satsuma, yuzu, and tangerine; followed by notes of cranberry, peach, and hints of spice."}, {price: 17.0,  name: "Black Currant Soy Candle",  description: "Black currant, blackberries, cranberries and citrus. It is woody, fruity and tangy. Under notes are a blend of spruce, apple cider, cranberries, and plum. Grapefruit, mandarin, cinnamon, and clove notes intertwine as the light essence of vanilla beans provide a delicate finish."},{price: 17.0,  name: "Beach Soy Candle",  description: "This candle smells of a vacation in Hawaii. Fresh cut melon, island coconut, and palm leaves combine to create the ultimate sun inspired candle. Beach is rounded out by the tonka bean, which evokes a blend of vanilla and almond. You will not believe the scent throw on this candle!"}, {price: 17.0,  name: "Nectar Soy Candle",  description: "The aroma of fresh peaches makes this rich & sweet candle. Notes include peach, apple, plum, raspberry, coconut, citrus, violet, lily and tonka bean."}, {price: 17.0,  name: "Balsam Soy Candle",  description: "Balsam is a refreshing outdoor woodsy blend with pine notes dominating on a base of light cedar and warm musk. The perfect Christmas tree, and a good all-year scent."}, {price: 17.0,  name: "Lemon Coconut Soy Candle",  description: "Lemon Coconut Soy Candle , The classic pina-colada scent of pineapple and coconut is delightfully enhanced by the additions of fresh-squeezed lemon, sugary vanilla, and hints of orange zest and lime. So fresh!"}, {price: 17.0,  name: "Wassail Soy Candle",  description: "This nostalgic candle boasts warm citrus notes that lead to a sweet blend of fruit and florals on a base of cinnamon and clove for the perfect holiday fragrance. Smells just like a mug of warm wassail. Beautiful balsam fir surrounded by sparkling notes of orange, grapefruit and crushed cranberries with a background of sandalwood, clove & cinnamon."}])

@images = Dir.glob("app/assets/images/*.jpeg")
@images.each do |i|
  id = File.basename(i).gsub('.jpg','');
  t = Item.where(id:id).first;
  t.images = [Pathname.new(i).open];
end
