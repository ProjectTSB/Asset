#> asset:artifact/0554.catastrophe/trigger/fullset/attack/3.damage_cooldown
#
# ダメージのクールダウンチェック
#
# @within function asset:artifact/0554.catastrophe/trigger/fullset/attack/2.check

# 前回効果発動時の時間との差からクールダウン中かどうかを判定する
    execute store result score $FE.Cooldown Temporary run time query gametime
    scoreboard players operation $FE.Cooldown Temporary -= @s FE.Cooldown
    execute if score $FE.Cooldown Temporary matches 20.. run function asset:artifact/0554.catastrophe/trigger/fullset/attack/4.damage
    scoreboard players reset $FE.Cooldown Temporary
