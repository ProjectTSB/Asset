#> asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/set_target
#
# テルツェット・プルガトリオ
#
# @within asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/

# 対象決定
    execute store result score $Temp Temporary run tag @a[tag=!PlayerShouldInvulnerable,distance=..160,sort=random,limit=3] add BF.FlareTarget
    # tag @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=random,limit=3] add BF.FlareTarget

# オブジェクト召喚
    function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/summon_line

# 終了
    scoreboard players reset $Temp Temporary
