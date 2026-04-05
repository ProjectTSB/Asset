#> asset:object/1132.red_knight_zenith_slash/init/visual_laser/length_decison_recursive
#
# 見た目ビームの長さを決定
#
# @within function
#   asset:object/1132.red_knight_zenith_slash/init/visual_laser/
#   asset:object/1132.red_knight_zenith_slash/init/visual_laser/length_decison_recursive

# 後でレーザーの長さを決めるためにスコア加算
    scoreboard players add @s Temporary 1

# 壁がなかったり、対象にあたったりしなければ再帰
    execute if entity @s[distance=..25] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision run function asset:object/1132.red_knight_zenith_slash/init/visual_laser/length_decison_recursive
