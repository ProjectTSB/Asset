#> asset:object/1211.laser_pointer_marker/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1211/tick

#> private
# @private
    #declare score_holder $MobUUID

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 紐づいている対象に追従
    scoreboard players operation $MobUUID Temporary = @s 1211.MobUUID
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Death,distance=..50,limit=1] if score @s MobUUID = $MobUUID Temporary anchored eyes positioned ^ ^ ^ run tp @e[type=item_display,tag=this,limit=1] ^ ^ ^

# リセット
    scoreboard players reset $MobUUID Temporary

# 消滅処理
    kill @s[scores={General.Object.Tick=30..}]
