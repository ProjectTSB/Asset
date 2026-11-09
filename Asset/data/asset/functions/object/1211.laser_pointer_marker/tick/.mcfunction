#> asset:object/1211.laser_pointer_marker/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1211/tick

#> private
# @private
    #declare score_holder $O1211.MobUUID

# Tick減算
    scoreboard players remove @s General.Object.Tick 1

# 紐づいている対象に追従
    scoreboard players operation $O1211.MobUUID Temporary = @s O1211.MobUUID
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Death,distance=..50,limit=1] if score @s MobUUID = $O1211.MobUUID Temporary anchored eyes positioned ^ ^ ^ run tp @e[type=item_display,tag=this,limit=1] ^ ^ ^

# リセット
    scoreboard players reset $O1211.MobUUID

# 消滅処理
    kill @s[scores={General.Object.Tick=..0}]
