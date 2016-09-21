
def create_content_producers
  ContentProducer.delete_all
  Translation.delete_all

  cp = ContentProducer.create(name: "FLOYD") 
  cp.translations.create(title: "Burger restaurant confusion", 
                         note: "around July 15th, 2012", 
                         body: "BLAHBLAHBLAH", 
                         source: "http://example.com",
                         translation_type: "tweet")

  cp.translations.create(title: "Bleach", 
                         note: "around July 15th, 2012", 
                         body: "BLAHBLAHBLAH", 
                         source: "http://example.com",
                         translation_type: "tweet")

  cp.translations.create(title: "Third thing", 
                         note: "around July 15th, 2012", 
                         body: "BLAHBLAHBLAH", 
                         source: "http://example.com",
                         translation_type: "tweet")

  cp = ContentProducer.create(name: "PURPLE")
  cp.translations.create(title: "Burger restaurant confusion", note: "around July 15th, 2012", translation_type: "tweet")
  cp.translations.create(title: "Second Thing", note: "around July 15th, 2012", translation_type: "blog")
end
