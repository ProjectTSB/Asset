#> asset:mob/0257.distortion_spellbook/tick/summon_teleporter
#
#
#
# @within function asset:mob/0257.distortion_spellbook/tick/

# 難易度値取得
    function api:global_vars/get_difficulty

# プレイヤー位置にテレポーター召喚
# (難易度値)体だけ敵を引き寄せる
    data modify storage api: Argument.ID set value 2077
    data modify storage api: Argument.FieldOverride.Count set from storage api: Return.Difficulty
    execute at @p[gamemode=!spectator,distance=..20] run function api:object/summon

# スコア戻す
    scoreboard players set @s 75.CoolTime 0
