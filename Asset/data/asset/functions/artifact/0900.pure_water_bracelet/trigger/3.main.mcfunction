#> asset:artifact/0900.pure_water_bracelet/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0900.pure_water_bracelet/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く
    execute if predicate world_manager:area/02.islands unless block ~ ~ ~ lava unless block ~ ~1 ~ lava if predicate lib:random_pass_per/40 run summon potion ~ ~1 ~ {Silent:1b,Item:{id:"minecraft:stick",Count:1b,tag:{Potion:"minecraft:water",CustomModelData:1037}}}