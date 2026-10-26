#> asset:artifact/1682.pre_cise_empty/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1682.pre_cise_empty/trigger/2.check_condition

# 的に命中したか判定する
    function asset:artifact/1682.pre_cise_empty/hit/judge

# 外れた場合は使用回数を減らさない (MPとクールダウンは消費される)
    execute unless score $Hit Temporary matches 1 run data modify storage asset:artifact IgnoreItemUpdate set value true

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# 演出
    playsound block.dispenser.fail player @a[distance=..16] ~ ~ ~ 0.6 1.5

# 命中した的を消して、新しい的を召喚する
    execute if score $Hit Temporary matches 1 run function asset:artifact/1682.pre_cise_empty/hit/on_hit

# 残り回数が1回の時命中した場合 弾数を満たした神器へ置換する
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 1681
    execute unless data storage asset:context Items.mainhand.id run function api:artifact/replace/from_id

# 弾数を満たした神器へ置換した場合は一式を消す (通常の一式は1681のtickで召喚される)
    execute unless data storage asset:context Items.mainhand.id run function asset:artifact/1682.pre_cise_empty/keep/kill_objects

# リセット
    scoreboard players reset $Hit Temporary
    scoreboard players reset $UserID Temporary
