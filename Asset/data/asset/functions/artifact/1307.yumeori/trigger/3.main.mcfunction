#> asset:artifact/1307.yumeori/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1307.yumeori/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.wither.shoot player @a ~ ~ ~ 1 1.8
    playsound item.trident.riptide_1 player @a ~ ~ ~ 1 1.8
    # particle flash ~ ~ ~ 0 0 0 0 1

# 何もなければ普通の矢を発射
    function asset:artifact/1307.yumeori/trigger/neutral_arrow
