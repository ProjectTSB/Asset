#> asset:artifact/1681.pre_cise/target/summon_center_target
#
# 画面中央の的を1つ召喚する (狙う敵がいない NoLockOn のときの的)
# 的は常に所有者の目から視線方向へ1m先に置かれ、通常の的より大きい
#
# @input as player at player
# @within function
#   asset:artifact/1681.pre_cise/hit/on_hit
#   asset:artifact/1681.pre_cise/target/summon_targets

# 画面中央の的を召喚する
    data modify storage api: Argument.ID set value 1206
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.ArtifactID set value 1681
    data modify storage api: Argument.FieldOverride.Center set value 1
    function api:object/summon
