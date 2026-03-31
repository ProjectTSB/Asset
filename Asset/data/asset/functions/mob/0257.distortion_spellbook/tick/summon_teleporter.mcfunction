#> asset:mob/0257.distortion_spellbook/tick/summon_teleporter
#
#
#
# @within function asset:mob/0257.distortion_spellbook/tick/

#> Private
# @private
    #declare score_holder $Difficulty

# 難易度値取得
    function api:global_vars/get_difficulty

# プレイヤー位置にテレポーター召喚
# (難易度値 + 1)体だけ敵を引き寄せる
    data modify storage api: Argument.ID set value 2077
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty
    execute store result storage api: Argument.FieldOverride.Count int 1 run scoreboard players add $Difficulty Temporary 1
    execute at @p[gamemode=!spectator,distance=..20] run function api:object/summon

# リセット
    scoreboard players reset $Difficulty Temporary
