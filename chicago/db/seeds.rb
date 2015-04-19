# Place
#   title: string
#   photo_url: string
#   admission_price: integer
#   description: text

Place.delete_all
# admission_price will be divided by 100 when displaying

place_list = [
    {:title => "Art Institute of Chicago", 
     :photo_url => "http://images.chicagotraveler.com/sites/default/files/billboard/art-institute-chicago-1_C.jpg", 
     :admission_price => 1700, 
     :description => "The Art Institute of Chicago (AIC) is an encyclopedic art museum located in Chicago's Grant Park. It features a collection of Impressionist and Post-Impressionist art in its permanent collection. Its holdings also include American art, Old Masters, European and American decorative arts, Asian art, modern and contemporary art, and architecture and industrial and graphic design. In addition, it houses the Ryerson & Burnham Libraries."},

    {:title => "Millennium Park", 
     :photo_url => "http://images.chicagotraveler.com/sites/default/files/billboard/millenium-park_C_0.jpg", 
     :admission_price => 0, 
     :description => "Millennium Park is a public park located in the Loop community area of Chicago in Illinois, US, and originally intended to celebrate the millennium. It is a prominent civic center near the city's Lake Michigan shoreline that covers a 24.5-acre (99,000 m2) section of northwestern Grant Park. The area was previously occupied by parkland, Illinois Central rail yards, and parking lots.[1] The park, which is bounded by Michigan Avenue, Randolph Street, Columbus Drive and East Monroe Drive, features a variety of public art. As of 2009, Millennium Park trailed only Navy Pier as a Chicago tourist attraction."},

    {:title => "Chicago Symphony Center", 
     :photo_url => "http://soundfusemag.com/wp-content/uploads/2012/12/Chi-Symphony_Center_aud-590x421.jpg", 
     :admission_price => 9000, 
     :description => "Symphony Center is a music complex located at 220 South Michigan Avenue in the Loop area of Chicago, Illinois. Home to the Chicago Symphony Orchestra, Chicago Symphony Chorus, Civic Orchestra of Chicago, Chicago Sinfonietta, and the Institute for Learning, Access, and Training, Symphony Center includes the 2,522-seat Orchestra Hall, which dates from 1904; Buntrock Hall, a rehearsal and performance space; Grainger Ballroom, an event space overlooking Michigan Avenue and the Art Institute of Chicago; a public multi-story rotunda; tesori restaurant; and administrative offices. In June 1993, plans to significantly renovate and expand Orchestra Hall were approved and the $110 million project resulting in Symphony Center being completed from 1995 to 1997. Orchestra Hall at Symphony Center was designated a National Historic Landmark on April 19, 1994. It has been listed on the National Register of Historic Places since 1978."},

    {:title => "Lincoln Park Zoo", 
     :photo_url => "http://gomighty.com/wp-content/uploads/2013/05/Lincoln%20Park%20Zoo.jpg", 
     :admission_price => 0, 
     :description => "Lincoln Park Zoo is a free 35-acre (14 ha) zoo located in Lincoln Park in Chicago, Illinois. The zoo was founded in 1868, making it one of the oldest zoos in the U.S. It is also one of a few free admission zoos in the United States.[5] The zoo is an accredited member of the Association of Zoos and Aquariums (AZA)."},

    {:title => "Field Museum of Natural History", 
     :photo_url => "http://www.lensimpressions.net/images/20070415171551_lensimpressions-fieldmuseum-05.jpg", 
     :admission_price => 2500, 
     :description => "The Field Museum of Natural History, located in Chicago, Illinois, USA, is one of the largest natural history museums in the world.[2] The museum maintains its status as a premier natural history museum through the size and quality of its educational and scientific programs,[3][4] as well as due to its extensive scientific specimen and artifact collections.[5] The diverse, high quality permanent exhibitions,[6] which attract up to 2 million visitors annually, range from the earliest fossils to past and current cultures from around the world to interactive programming demonstrating today’s urgent conservation needs."}

].each do |place_hash|
  p = Place.new
  p.title = place_hash[:title]
  p.photo_url = place_hash[:photo_url]
  p.admission_price = place_hash[:admission_price]
  p.description = place_hash[:description]
  p.save
end

# place_list.each do |place|
#   Place.create(:title => place[0], :photo_url => place[1], :admission_price => place[2], :description => place[3])
# end 


# Review
#   titile: string
#   rating: integer
#   description: text

# Review.delete_all
# [

# ].each do |review_hash|
#   r = Review.new
#   r.title = review_hash[:title]
#   r.rating = review_hash[:rating]
#   r.description = review_hash[:description]
#   r.save
# end









