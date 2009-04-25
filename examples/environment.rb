unless defined?(GREASE_ROOT)
  GREASE_ROOT = File.join( File.dirname(__FILE__), '..')
  $LOAD_PATH << File.join( GREASE_ROOT, 'lib')
end
