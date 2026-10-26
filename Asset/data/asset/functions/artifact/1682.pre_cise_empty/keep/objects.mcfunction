#> asset:artifact/1682.pre_cise_empty/keep/objects
#
# 頭上のbig_preciseを維持し、スニーク中はリロード状態の的を維持する
# 自分のbig_preciseが存在しなければ召喚し、スニーク中に自分の的が存在しなければ召喚する
#
# @input as player at player
# @within function asset:artifact/1682.pre_cise_empty/tick/2.check_condition

# 自分のbig_preciseと的を探す (この神器が召喚したものだけが対象)
    scoreboard players operation $UserID Temporary = @s UserID
    scoreboard players set $BigExists Temporary 0
    scoreboard players set $TargetExists Temporary 0
    execute as @e[type=item_display,tag=PreCise.BigPrecise,tag=PreCise.Source1682,distance=..16] if score @s UserID = $UserID Temporary run scoreboard players set $BigExists Temporary 1
    execute as @e[type=item_display,tag=PreCise.Target,tag=PreCise.Source1682,distance=..16] if score @s UserID = $UserID Temporary run scoreboard players set $TargetExists Temporary 1

# big_preciseが無ければ召喚する (スニークは問わない)
    execute if score $BigExists Temporary matches 0 run function asset:artifact/1682.pre_cise_empty/keep/summon_big

# スニーク中に的が無ければ召喚する
    execute if predicate lib:is_sneaking if score $TargetExists Temporary matches 0 run function asset:artifact/1682.pre_cise_empty/target/summon_reload_targets

# リセット
    scoreboard players reset $UserID Temporary
    scoreboard players reset $BigExists Temporary
    scoreboard players reset $TargetExists Temporary
