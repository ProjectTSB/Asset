#> asset:object/1197.celestial_starfield/tick/twinkle
#
# 1197.Twinkle の文字を、1枚ずつ別々の時点でランダムな明るさに変える
#
# @within function asset:object/1197.celestial_starfield/tick/

    execute on passengers if entity @s[tag=1197.Twinkle] if predicate lib:random_pass_per/50 store result entity @s text_opacity int 1 run random value 110..255
