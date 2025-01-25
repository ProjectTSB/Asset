#> asset:artifact/0397.floor_sublimation_wing/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/397/click/check


# 他にアイテム等確認する場合はここに書く
    # 条件チェックに必要なオブジェクトの初期化
        scoreboard players set $397_Count Temporary 0
        scoreboard players set $397_Stat Temporary 0
    # Y <= 32ブロック に埋まることなくTPできるブロックが存在するか
        execute positioned ~ ~1 ~ run function asset:artifact/0397.floor_sublimation_wing/click/2.1.check_block
        execute if score $397_Stat Temporary matches 1 as @e[type=area_effect_cloud,tag=B1.Marker,distance=..32,limit=1] at @s if predicate lib:is_ban_tp_area run scoreboard players set $397_Stat Temporary 0
        execute if score $397_Stat Temporary matches 0 if entity @s[tag=CanUsed] run function lib:message/artifact/can_not_use_here
        execute if score $397_Stat Temporary matches 0 run tag @s remove CanUsed

# CanUsedタグをチェックして.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0397.floor_sublimation_wing/click/

# オブジェクトの開放