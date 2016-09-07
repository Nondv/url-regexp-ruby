require 'minitest/autorun'
require_relative 'url_regexp'

#
# Just checking correct/incorrect URLs
#
describe 'URL_REGEXP' do
  correct_urls = ['http://test.com//',
                  'https://example.com',
                  'http://trololo.uk?',
                  'https://example.org/test/1',
                  'http://with-port.com:1234',
                  'http://params.org/res/1/?whatever=1',
                  'https://test.org:1234/res/1/?whatever_bro'].freeze

  bad_urls = ['http:/wrong.com',
              'http://too much whitespaces bro',
              'http://bad-port.com:12x4',
              'without-proto.com',
              'htttp://bad-proto.com'].freeze

  correct_urls.each { |url| it("should be matched on #{url.inspect}") { assert(url =~ URL_REGEXP) } }

  bad_urls.each { |url| it("should not be matched on #{url.inspect}") { assert(url !~ URL_REGEXP) } }
end
