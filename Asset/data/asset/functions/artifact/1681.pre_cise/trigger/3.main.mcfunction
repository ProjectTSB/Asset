#> asset:artifact/1681.pre_cise/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1681.pre_cise/trigger/2.check_condition

# 的に命中したか判定する
    function asset:artifact/1681.pre_cise/shared/judge

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う 使用回数は命中に関係なく減る
    function asset:artifact/common/use/mainhand

# 演出
    playsound entity.arrow.shoot player @a[distance=..16] ~ ~ ~ 0.6 1.8

# 命中した場合は頭上のbig_preciseが弾を発射する
    execute if score $Hit Temporary matches 1 as @e[type=item_display,tag=PreCise.BigPrecise,distance=..16] if score @s UserID = $UserID Temporary at @s run function asset:artifact/1681.pre_cise/trigger/fire

# 命中した的を消して新しい的を召喚する
    execute if score $Hit Temporary matches 1 run function asset:artifact/1681.pre_cise/shared/on_hit

# 残り回数が1回の時発動した場合 リロード状態の神器へ置換する
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 1682
    execute unless data storage asset:context Items.mainhand.id run function api:artifact/replace/from_id

# リロード状態へ置換した場合は的を通常の的からチェストへ召喚し直す (スニーク中のみ)
    execute unless data storage asset:context Items.mainhand.id if predicate lib:is_sneaking run scoreboard players set $Chest Temporary 1
    execute unless data storage asset:context Items.mainhand.id if predicate lib:is_sneaking run function asset:artifact/1681.pre_cise/shared/reset_targets

# リセット
    scoreboard players reset $Hit Temporary
    scoreboard players reset $UserID Temporary
