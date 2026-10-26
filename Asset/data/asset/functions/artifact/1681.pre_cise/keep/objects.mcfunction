#> asset:artifact/1681.pre_cise/keep/objects
#
# 頭上のbig_preciseを維持し、スニーク中は狙う敵の探索と的を維持する
# 自分のbig_preciseが存在しなければ召喚する
# スニーク中でなければ狙う敵の保存を消す
#
# @input as player at player
# @within function asset:artifact/1681.pre_cise/tick/2.check_condition

# 自分のbig_preciseと的を探す (この神器が召喚したものだけが対象)
    scoreboard players operation $UserID Temporary = @s UserID
    scoreboard players set $BigExists Temporary 0
    scoreboard players set $TargetExists Temporary 0
    execute as @e[type=item_display,tag=PreCise.BigPrecise,tag=PreCise.Source1681,distance=..16] if score @s UserID = $UserID Temporary run scoreboard players set $BigExists Temporary 1
    execute as @e[type=item_display,tag=PreCise.Target,tag=PreCise.Source1681,distance=..16] if score @s UserID = $UserID Temporary run scoreboard players set $TargetExists Temporary 1

# big_preciseが無ければ召喚する (スニークは問わない)
    execute if score $BigExists Temporary matches 0 run function asset:artifact/1681.pre_cise/keep/summon_big

# スニーク中は狙う敵と的を維持し、スニーク中でなければ狙う敵の保存を消す
    execute if predicate lib:is_sneaking run function asset:artifact/1681.pre_cise/keep/targets
    execute unless predicate lib:is_sneaking run function asset:artifact/1681.pre_cise/aim/reset

# リセット
    scoreboard players reset $UserID Temporary
    scoreboard players reset $BigExists Temporary
    scoreboard players reset $TargetExists Temporary
