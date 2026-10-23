#> asset:artifact/1646.laser_pointer/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1646.laser_pointer/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
# 前方の敵をロックオンし、Effect420を付与
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/1646.laser_pointer/trigger/rec

    execute as @e[type=#lib:living_without_player,tag=1646.Hit,sort=nearest,limit=1] run function asset:artifact/1646.laser_pointer/trigger/apply_effect

# 演出
    playsound block.note_block.bit player @a ~ ~ ~ 1.0 1.0
