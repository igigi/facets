class String

# Create a random String of given length, using given character set
#
# CREDIT: Tilo Sloboda
#
# See also: https://gist.github.com/tilo/3ee8d94871d30416feba
# 
# Usage / Examples:
#         > String.random
#          => "D9DxFIaqR3dr8Ct1AfmFxHxqGsmA4Oz3"
#         > String.random(10)
#          => "t8BIna341S"
#         > String.random(10, ['a'..'z'])
#          => "nstpvixfri"
#         > String.random(10, ['0'..'9'] )
#          => "0982541042"
#         > String.random(10, ['0'..'9','A'..'F'] )
#          => "3EBF48AD3D"
#
  def self.random(len=32, character_set = ["A".."Z", "a".."z", "0".."9"])
    characters = character_set.map { |i| i.to_a }.flatten
    characters_len = characters.length
    (0...len).map{ characters[rand(characters_len)] }.join
  end
end
