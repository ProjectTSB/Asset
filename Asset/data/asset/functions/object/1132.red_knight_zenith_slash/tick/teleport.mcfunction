#> asset:object/1132.red_knight_zenith_slash/tick/teleport
#
# ランダムテレポート
#
# @within function asset:object/1132.red_knight_zenith_slash/tick/

#> SpreadLib
# @private
#declare tag SpreadMarker
#declare tag 1132.Target

# 実行座標から一番近いモブをターゲットとする
    tag @e[type=#lib:living,tag=Enemy,distance=..32,sort=nearest,limit=1] add 1132.Target

# 飛ぶ前の演出
#    function asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/vfx

# 拡散させるマーカーを召喚
    execute at @s run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# さっきのマーカーを実行者として、ターゲットの位置から拡散させる
    data modify storage lib: Argument.Bounds set value [[8d,8d],[8d,8d],[8d,8d]]
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @e[type=#lib:living,tag=1132.Target,distance=..32,limit=1] run function lib:spread_entity/

# 拡散が終わったマーカーへと移動
    execute at @e[type=marker,tag=SpreadMarker,limit=1] run tp @s ~ ~ ~

# 拡散後の位置から、ターゲットとしたモブのほうを向く
    execute at @s facing entity @e[type=#lib:living,tag=1132.Target,distance=..32,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]
    tag @e[type=#lib:living,tag=1132.Target,distance=..32,limit=1] remove 1132.Target
