#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/small_laser/shoot
#
# 演出としての側面が強いので、当たらなくてもいい。
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/tick

#> SpreadLib
# @private
#declare tag SpreadMarker

# サウンド
    playsound ogg:block.respawn_anchor.deplete2 player @a ~ ~ ~ 1 2

# マーカーを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 拡散
    data modify storage lib: Argument.Bounds set value [[8d,8d],[8d,8d],[8d,8d]]
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:spread_entity/

# 見た目レーザーと判定レーザーを、さっき拡散させたマーカーめがけて発射
    execute positioned ~ ~1.5 ~ facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/small_laser/recursive
    execute positioned ~ ~1.5 ~ facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/small_laser/visual_laser

# 拡散に使ったマーカーをキル
    kill @e[type=marker,tag=SpreadMarker,limit=1]
