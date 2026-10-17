#> asset:object/1197.celestial_starfield/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1197/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消えるまでの残りtickを求める
    execute store result score $1197.Remaining Temporary run data get storage asset:context this.Duration
    scoreboard players operation $1197.Remaining Temporary -= @s General.Object.Tick

# 出現から7tickで、FadeIn の文字を1tickごとに濃くする
    execute if score @s General.Object.Tick matches 2 on passengers if entity @s[tag=1197.FadeIn] run data modify entity @s text_opacity set value 65
    execute if score @s General.Object.Tick matches 3 on passengers if entity @s[tag=1197.FadeIn] run data modify entity @s text_opacity set value 100
    execute if score @s General.Object.Tick matches 4 on passengers if entity @s[tag=1197.FadeIn] run data modify entity @s text_opacity set value 140
    execute if score @s General.Object.Tick matches 5 on passengers if entity @s[tag=1197.FadeIn] run data modify entity @s text_opacity set value 180
    execute if score @s General.Object.Tick matches 6 on passengers if entity @s[tag=1197.FadeIn] run data modify entity @s text_opacity set value 220
    execute if score @s General.Object.Tick matches 7 on passengers if entity @s[tag=1197.FadeIn] run data modify entity @s text_opacity set value 255

# 最初の24tickで、チャイムを余韻として鳴らす
    execute if data storage asset:context this{Chime:true} if score @s General.Object.Tick matches ..24 run function asset:object/1197.celestial_starfield/tick/chime/

# 薄くする前は星を描き、濃くし終えた後は文字をばらばらに瞬かせる
    execute if score $1197.Remaining Temporary matches 11.. if data storage asset:context this.Stars[0] run function asset:object/1197.celestial_starfield/tick/stars/
    execute if score $1197.Remaining Temporary matches 11.. if score @s General.Object.Tick matches 8.. run function asset:object/1197.celestial_starfield/tick/twinkle

# 最後の10tickで、2tickごとに線と文字を薄くする
    execute if score $1197.Remaining Temporary matches 10 on passengers run function asset:object/1197.celestial_starfield/tick/fade.m {Opacity:200,Background:-1593841240}
    execute if score $1197.Remaining Temporary matches 8 on passengers run function asset:object/1197.celestial_starfield/tick/fade.m {Opacity:150,Background:-1862276696}
    execute if score $1197.Remaining Temporary matches 6 on passengers run function asset:object/1197.celestial_starfield/tick/fade.m {Opacity:100,Background:1895819688}
    execute if score $1197.Remaining Temporary matches 4 on passengers run function asset:object/1197.celestial_starfield/tick/fade.m {Opacity:60,Background:1090513320}
    execute if score $1197.Remaining Temporary matches 2 on passengers run function asset:object/1197.celestial_starfield/tick/fade.m {Opacity:32,Background:553642408}

# 時間が来たら、乗せた表示と自身を消す
    execute if score $1197.Remaining Temporary matches ..0 on passengers run kill @s
    execute if score $1197.Remaining Temporary matches ..0 run kill @s

# リセット
    scoreboard players reset $1197.Remaining Temporary
