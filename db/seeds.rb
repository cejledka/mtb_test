# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rus = Country.create({name: 'Россия', currency: 'RUB'})
kz = Country.create({name: 'Казахстан', currency: 'KZT'})
ua = Country.create({name: 'Украина', currency: 'UAH'})

regions = Region.create([
    {name: 'Волгоградская область', country: rus},
    {name: 'Астраханская область', country: rus},
    {name: 'Республика Калмыкия', country: rus},

    {name: 'Винницкая область', country: ua},
    {name: 'Волынская область', country: ua},
    {name: 'Луганская область', country: ua},

    {name: 'Акмолинская область', country: kz},
    {name: 'Актюбинская область', country: kz},
    {name: 'Алматинская область', country: kz},
              ])

random_city_names = "Фрало,Неипфис,Ураусдон,Стротрарк,Устаилэнс,Джеусдифф,Желес,Шелей,Бавлаго,Уажеомса".split(',')

random_city_names.each do |name|
  City.create(name: name, region: regions.sample)
end

random_camp_site_names = "Еслеустол,Злуарнард,Шорк,Друл,Доахорк,Оиброитин,Излеигэнд,Усроевандо,Джэка,Гроаумор".split(',')

lipsum="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque finibus facilisis turpis eu malesuada. Nulla consectetur finibus vulputate. Nulla imperdiet quam ut pulvinar feugiat. Nullam arcu erat, finibus quis hendrerit auctor, congue in quam. Nullam aliquam lacus tristique, tempus ex ac, cursus lorem. Vestibulum ultricies lectus nec risus auctor consectetur. Etiam nisl turpis, vulputate dictum lacus non, tempus rhoncus felis. Phasellus justo justo, rhoncus a eleifend in, iaculis eu lorem. Nam ut est ut orci rhoncus auctor varius ut ligula. Duis tincidunt accumsan mattis. Mauris velit nibh, suscipit a ornare nec, fringilla eget neque. Praesent eget accumsan felis, vitae iaculis nisi.

Duis nec felis ut dui pharetra sodales a vel ipsum. Vestibulum rutrum euismod urna, nec congue sapien iaculis vel. Aliquam erat volutpat. Nulla ac imperdiet risus, vitae mollis dolor. Morbi imperdiet vitae neque at egestas. Proin ultricies bibendum feugiat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse erat erat, dapibus vitae turpis id, fringilla malesuada ligula. Ut imperdiet ultrices vestibulum. Nunc tempor urna sit amet odio malesuada, eget pulvinar ligula maximus. Curabitur ut elit id ante viverra dictum. Praesent ornare facilisis sapien et euismod.

Nunc accumsan ligula in eleifend bibendum. Suspendisse ornare purus quis gravida fringilla. Nunc interdum metus vitae urna consequat, ac posuere purus gravida. Donec tincidunt faucibus rutrum. Sed dapibus interdum neque ut dictum. Donec at vulputate nisl. Donec lobortis euismod nibh, varius imperdiet eros. Maecenas dictum neque nec tincidunt consequat. Phasellus consequat, justo in hendrerit faucibus, lectus augue consectetur orci, eu congue arcu dolor sed lacus. Curabitur porttitor tincidunt felis.

Aenean non urna quis nisi pharetra rutrum eget eget diam. Cras ac fringilla nibh, ut rutrum nibh. Curabitur ullamcorper felis lorem. Vestibulum erat tellus, dapibus eu purus sit amet, dignissim elementum dolor. Donec varius dui et risus congue, nec efficitur erat consequat. Integer ut nisl cursus, placerat lectus vitae, convallis ex. Maecenas pharetra ut eros a dignissim. Curabitur tellus eros, tempus commodo cursus et, condimentum eu turpis. Etiam auctor interdum elit, sit amet lobortis justo cursus non. Nam sit amet aliquet libero. Ut elementum molestie massa vitae mattis. Suspendisse hendrerit sem sit amet felis consectetur rutrum. Nulla luctus vestibulum congue. Vestibulum id pretium enim. Sed tempus tristique odio sit amet fringilla. Fusce mollis lorem nibh, quis ultrices libero dapibus id.

Nunc luctus diam lacus, ac varius erat ornare at. Suspendisse vestibulum vel enim eu consequat. Vivamus venenatis dolor id dui scelerisque vehicula. Morbi in erat pulvinar, pretium orci id, suscipit augue. Nullam lobortis sed purus posuere cursus. Aliquam ex massa, consectetur eu varius et, efficitur sed tortor. Aliquam pharetra venenatis tortor sodales accumsan. Proin mi tortor, elementum eu facilisis sit amet, laoreet nec nisi. Sed ultricies velit eget nisi viverra, quis facilisis libero eleifend. Cras quis augue nec turpis rutrum fringilla."
           .split(".")

random_camp_site_names.each do |name|
  if rand(2) == 0
    desc = lipsum.sample
  else
    desc = ''
  end

  if rand(2) == 0
    dist = rand(100)+1
  else
    dist = nil
  end

  if rand(2) == 0
    price = rand(10000)+1
  else
    price = nil
  end

  CampSite.create(name: name, description: desc, city: City.all.sample, distance: dist, price: price)
end
