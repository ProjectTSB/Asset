#> asset:artifact/1681.pre_cise/target/summon_normal_target
#
# 狙う敵の方向を基準にした通常の的を1つ召喚する
# 局所オフセットと位置は、他の的と近すぎないようObjectのinitが抽選して決める
#
# @input as player at player
# @within function
#   asset:artifact/1681.pre_cise/hit/on_hit
#   asset:artifact/1681.pre_cise/target/summon_targets

# 通常の的を召喚する
    data modify storage api: Argument.ID set value 1206
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.ArtifactID set value 1681
    function api:object/summon
