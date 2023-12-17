#> asset:artifact/1033.thelema_of_blue_sea/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1033.thelema_of_blue_sea/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 攻撃回数スコアを増やす
    scoreboard players add @s SP.AttackCount 1

# デバッグ用
    #scoreboard players set @s SP.AttackCount 1

# 次の段階までのスコア
    scoreboard players set @s SP.WaitingTime 30

# 演出用markerを召喚
    execute anchored eyes positioned ^ ^-0.3 ^2 run summon marker ~ ~ ~ {Tags:["SP.Marker","SP.MarkerInit","Object"]}

# markerのinit処理
    execute as @e[type=marker,tag=SP.MarkerInit,distance=..5,limit=1] at @s run function asset:artifact/1033.thelema_of_blue_sea/trigger/marker/init

# スケジュールループを起動
    schedule function asset:artifact/1033.thelema_of_blue_sea/trigger/marker/loop 1t replace
    schedule function asset:artifact/1033.thelema_of_blue_sea/trigger/loop 1t replace

# 攻撃回数が3ならスコアをリセット
    execute if entity @s[scores={SP.AttackCount=3..}] run scoreboard players reset @s SP.WaitingTime
    execute if entity @s[scores={SP.AttackCount=3..}] run scoreboard players reset @s SP.AttackCount