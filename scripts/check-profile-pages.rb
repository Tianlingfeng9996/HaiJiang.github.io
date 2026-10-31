require 'nokogiri'

def check(path)
  document = Nokogiri::HTML(File.read(path))
  yield document
end

check('_site/publications/index.html') do |doc|
  content = doc.at_css('.page__content')
  raise 'ORCID link is missing' unless content.at_css('a[href="https://orcid.org/0000-0001-7387-8867"]')
  raise 'Publication heading is not rendered' unless content.css('h2').any? { |h| h.text == 'Journal articles' }
  raise 'Raw Markdown leaked into publications' if content.text.include?('[ORCID](')
end

check('_site/index.html') do |doc|
  raise 'Current affiliation is missing' unless doc.at_css('.page__content').text.include?('Nakamura Laboratory')
  raise 'Japanese language link is missing' unless doc.at_css('a[href="/HaiJiang.github.io/ja/"]')
end

check('_site/ja/index.html') do |doc|
  raise 'Japanese page language is incorrect' unless doc.at_css('html')['lang'] == 'ja'
  raise 'Japanese affiliation is missing' unless doc.text.include?('中村研究室で助教')
  raise 'Email link is missing' unless doc.at_css('a[href="mailto:jianghai@uec.ac.jp"]')
  raise 'English return link is missing' unless doc.at_css('a[hreflang="en"][href="/HaiJiang.github.io/"]')
end
puts 'Profile pages: rendered links, headings, affiliation and language routes passed.'
