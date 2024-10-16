#> asset:mob/0059.jack_o_lantern/tick/skill/missile/select_target
#
# ミサイルのターゲットを決める
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/missile/

#> Private
# @private
    #declare tag Target

# 前方のプレイヤーを優先的にターゲットにする
    execute positioned ^ ^ ^15 run tag @r[distance=..16] add Target

# 前方にいなければ近くのプレイヤーを対象とする
    execute unless entity @p[tag=Target] run tag @p[distance=..50] add Target

# ターゲットの名前をフィールドに突っ込む
    execute as @p[tag=Target] run function lib:get_name/
    data modify storage asset:context this.TargetName set from storage lib: Return.Name

# リセット
    tag @p[tag=Target,distance=..50] remove Target
