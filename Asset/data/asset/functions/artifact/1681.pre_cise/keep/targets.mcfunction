#> asset:artifact/1681.pre_cise/keep/targets
#
# 狙う敵を探して保存し、的を維持する
# 的が無ければ召喚し、あれば狙う敵がいる状態といない状態が切り替わったときに召喚し直す
#
# @input
#   as player at player
#   score $TargetExists Temporary : 自分の的が存在すれば1
# @within function asset:artifact/1681.pre_cise/keep/objects

# 頭上のbig_preciseと同じ高さから狙う敵を探して保存する (高さ3はbig_preciseの頭上のオフセット)
    execute positioned ~ ~3 ~ run function asset:artifact/1681.pre_cise/aim/update

# 的が無ければ召喚し、あれば狙う敵の有無が切り替わったときに召喚し直す
    execute if score $TargetExists Temporary matches 0 run function asset:artifact/1681.pre_cise/target/summon_targets
    execute if score $TargetExists Temporary matches 1 if score $Changed Temporary matches 1 run function asset:artifact/1681.pre_cise/target/reset_targets

# リセット
    scoreboard players reset $Changed Temporary
