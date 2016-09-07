proto = '(https?://)'
domain = '([\w\-\.]+\w)'
port = '(\:\d+)'
path = '((/[\w\-]*)+)'
format = '(\.\w*)'
params = '(\?[^\n]*)' # whatever except \n

URL_REGEXP = Regexp.new("\\A#{proto}#{domain}#{port}?(#{path}#{format}?)?#{params}?\\z")
# ==> /\A(https?:\/\/)([\w\-\.]+\w)(\:\d+)?(((\/[\w\-]*)+)(\.\w*)?)?(\?[^\n]*)?\z/
