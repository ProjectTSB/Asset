#> asset:object/1147.sapphirus_resonance/tick/attack/
#
# 攻撃処理
#
# @within function asset:object/1147.sapphirus_resonance/tick/

#> temp
# @private
    #declare tag Target

# 攻撃タイミングでない場合キャンセル
    execute unless predicate asset:object/1147.sapphirus_resonance/is_attack_timing run return fail
# 規定位置に移動する
    execute if score @s General.Object.Tick matches 01 at @a[tag=VV.Owner,limit=1] run tp @s ^00.0 ^4.0 ^0.2
    execute if score @s General.Object.Tick matches 06 at @a[tag=VV.Owner,limit=1] run tp @s ^01.2 ^3.5 ^0.4
    execute if score @s General.Object.Tick matches 11 at @a[tag=VV.Owner,limit=1] run tp @s ^-1.2 ^3.5 ^0.4
# ターゲッティング
# プレイヤー前方の地点から一定範囲内の敵を探す
# 敵がいない場合、後ろを向く (??????)
# いる場合、その敵の方向を向く
    execute as @a[tag=VV.Owner,limit=1] at @s anchored eyes positioned ^ ^ ^5 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..7.5,sort=nearest,limit=1] add Target
    execute unless entity @e[type=#lib:living_without_player,tag=Target,tag=!Uninterferable,limit=1] as @e[type=marker,tag=this,distance=..10,limit=1] facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
    execute if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,limit=1] as @e[type=marker,tag=this,distance=..10,limit=1] at @s facing entity @e[type=#lib:living_without_player,tag=Target,tag=!Uninterferable,limit=1] eyes run tp @s ~ ~ ~ ~ ~
    tag @e[type=#lib:living_without_player,tag=Target,tag=!Uninterferable,limit=1] remove Target
# 演出
    execute at @s run function asset:object/1147.sapphirus_resonance/tick/attack/effect
# 射撃する
    execute at @s run function asset:object/1147.sapphirus_resonance/tick/attack/recursive.m with storage asset:context this
