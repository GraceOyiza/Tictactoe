$str = 'Well done Robet, You won!!!'
#print str.length

#str.length.times{ print "-"}


def print_results
  print '          ====='
  print '='*$str.length
  print "=====\n"
  print '          *    '
  print ' '*$str.length
  print "    *\n"
  puts "          *    #{$str}    *"
  print '          *    '
  print ' '*$str.length
  print "    *\n"
  print "          ====="
  print '='*$str.length
  print "=====\n"
end
