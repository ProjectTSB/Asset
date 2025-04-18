#> asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/prediction_line_obj
#
# テルツェット・プルガトリオ
#
# @within asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/

# 対象決定
    tag @e[type=item_display,tag=2181.Line,tag=!2181.Line.End,sort=random,limit=1] add BF.Temp.Dummy
    tp @e[type=item_display,tag=2181.Line,tag=BF.Temp.Dummy,limit=1] ~ ~ ~ 0 0

# プレイヤーを向く
    execute facing entity @s eyes as @e[type=item_display,tag=2181.Line,tag=BF.Temp.Dummy,limit=1] rotated ~ ~1 run function lib:rotate_display/

# 氷柱確認
    scoreboard players set @s BF.Counter 50
    execute positioned ~ ~ ~ facing entity @s feet run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/check
    scoreboard players reset @s BF.Counter

# 距離測定
    execute if entity @s[tag=!BF.Temp.Hit] run function lib:distance/as_to_at
    execute if entity @s[tag=BF.Temp.Hit] as @e[type=item_display,tag=2180.Pillar,tag=BF.Temp.Hit] run function lib:distance/as_to_at
    execute store result entity @e[type=item_display,tag=2181.Line,tag=BF.Temp.Dummy,limit=1] transformation.scale[2] float 0.001 run data get storage lib: Return.Distance 1000
    data remove storage lib: Return

# 終了
    execute if entity @s[tag=BF.Temp.Hit] run tag @e[type=item_display,tag=2180.Pillar,tag=BF.Temp.Hit] remove BF.Temp.Hit
    tag @s remove BF.Temp.Hit
    tag @e[type=item_display,tag=2181.Line,tag=BF.Temp.Dummy,limit=1] add 2181.Line.End
    tag @e[type=item_display,tag=2181.Line,tag=BF.Temp.Dummy,limit=1] remove BF.Temp.Dummy
