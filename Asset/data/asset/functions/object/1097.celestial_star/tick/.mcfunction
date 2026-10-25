#> asset:object/1097.celestial_star/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1097/tick

#> Private
# @private
    #declare score_holder $TargetMobUUID
    #declare tag 1097.CelestialTarget

# データ取得
    execute store result score $TargetMobUUID Temporary run data get storage asset:context this.TargetMobUUID
# ターゲットが居たらそいつを、居なければ近いやつをものすごい勢いでホーミングする
    execute if data storage asset:context this.TargetMobUUID positioned ^ ^ ^10 as @e[type=#lib:living_without_player,distance=..10] if score @s MobUUID = $TargetMobUUID Temporary run tag @s add 1097.CelestialTarget
    execute unless data storage asset:context this.TargetMobUUID positioned ^ ^ ^10 as @e[type=#lib:living_without_player,distance=..10,sort=nearest,limit=1] run tag @s add 1097.CelestialTarget
    execute facing entity @e[type=#lib:living,tag=1097.CelestialTarget,distance=..20,limit=1] eyes positioned ^ ^ ^-70 rotated as @s positioned ^ ^ ^-40 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
# リセット
    scoreboard players reset $TargetMobUUID Temporary
    tag @e[type=#lib:living_without_player,tag=1097.CelestialTarget,distance=..20,limit=1] remove 1097.CelestialTarget

# VFX
    execute at @s run particle firework ~ ~ ~ 0.2 0.2 0.2 0 1

# super 呼び出し
    execute at @s run function asset:object/super.tick
