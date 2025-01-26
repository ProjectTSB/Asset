#> asset:artifact/1078.pigeon_blood/trigger/resonance_attack/5.shot
#
# 射撃時にやること
#
# @within function asset:artifact/1078.pigeon_blood/trigger/resonance_attack/4.main

# 自身を特定できるようにtagを付与
    tag @s add TY.This

# プレイヤーの視点先周辺の敵を狙う いなければ視点先に射撃
# プレイヤーの目線から5ブロック先の周辺に敵Mobが(いる or いない)で分岐
# いないなら、5ブロック先で、実行者を自身にして自分の方向を見て、反対を向いている
# いるなら、実行者を自分に戻して、5ブロック先周辺の敵Mobを見る
    execute as @p[tag=Owner] at @s anchored eyes positioned ^ ^ ^5 unless entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..7.5,limit=1] as @e[type=marker,tag=TY.This,distance=..10,limit=1] facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
    execute as @p[tag=Owner] at @s anchored eyes positioned ^ ^ ^5 if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..7.5,limit=1] as @e[type=marker,tag=TY.This,distance=..10,limit=1] at @s facing entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..7.5,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# 演出
    playsound entity.firework_rocket.blast player @a ~ ~ ~ 1 0.5
    playsound entity.firework_rocket.blast player @a ~ ~ ~ 1 0.7
    particle electric_spark ~ ~ ~ 0 0 0 0.2 5
    execute at @s run function asset:artifact/1078.pigeon_blood/trigger/resonance_attack/vfx

# 射撃する
    execute at @s run function asset:artifact/1078.pigeon_blood/trigger/resonance_attack/6.shot_recursive

# ダメージ
    execute if entity @s[tag=Landing] run function asset:artifact/1078.pigeon_blood/trigger/resonance_attack/7.damage

# リセット
    tag @s remove TY.This
    tag @s remove Landing
    tag @e[tag=Target,distance=..20,limit=1] remove Target
