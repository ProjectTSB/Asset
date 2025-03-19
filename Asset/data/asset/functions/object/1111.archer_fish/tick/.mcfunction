#> asset:object/1111.archer_fish/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1111/tick

#> Private
# @private
    #declare tag 1111.FishTarget
    #declare score_holder $TargetMobUUID

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# データ取得
    execute store result score $TargetMobUUID Temporary run data get storage asset:context this.TargetMobUUID
# ターゲットが居たらそいつを、居なければ近いやつをものすごい勢いでホーミングする
    execute if data storage asset:context this.TargetMobUUID positioned ^ ^ ^10 as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10] if score @s MobUUID = $TargetMobUUID Temporary run tag @s add 1111.FishTarget
    execute unless data storage asset:context this.TargetMobUUID positioned ^ ^ ^10 as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10,sort=nearest,limit=1] run tag @s add 1111.FishTarget
    execute facing entity @e[type=#lib:living,tag=1111.FishTarget,distance=..20,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-1200 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
# リセット
    scoreboard players reset $TargetMobUUID Temporary
    tag @e[type=#lib:living,type=!player,tag=1111.FishTarget,distance=..20,limit=1] remove 1111.FishTarget

# super.tick
    execute at @s run function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
