#> asset:artifact/1055.compass_of_sea_abyss/damage_entity/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1055/damage_entity/check

# バニラ攻撃の場合はCanUsedを削除
    execute if data storage asset:context Damage{IsVanilla:1b} run tag @s remove CanUsed

