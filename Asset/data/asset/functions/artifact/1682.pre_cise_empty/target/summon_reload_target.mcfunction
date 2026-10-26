#> asset:artifact/1682.pre_cise_empty/target/summon_reload_target
#
# リロード状態の的を、実行者の視線に垂直な面上でランダムにずらした方角へ1つ召喚する
#
# @input
#   as player at player
#   score $XMin Temporary : 左右のずれの下限 (1000倍) 視線の左右45度の端が-1000と1000
#   score $XSpan Temporary : 左右のずれの幅 (1000倍) 全範囲なら下限-1000と幅2000
# @within function
#   asset:artifact/1682.pre_cise_empty/hit/on_hit
#   asset:artifact/1682.pre_cise_empty/target/summon_reload_targets

# 視線からずらした方角を求める
    function asset:artifact/1682.pre_cise_empty/rotation/roll_rotation

# その方角で、リロード状態の的を召喚する
    data modify storage api: Argument.FieldOverride.Yaw set from storage asset:temp PreCise.Rotation[0]
    data modify storage api: Argument.FieldOverride.Pitch set from storage asset:temp PreCise.Rotation[1]
    data modify storage api: Argument.FieldOverride.Chest set value 1
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.ArtifactID set value 1682
    data modify storage api: Argument.ID set value 1206
    function api:object/summon

# リセット
    data remove storage asset:temp PreCise
