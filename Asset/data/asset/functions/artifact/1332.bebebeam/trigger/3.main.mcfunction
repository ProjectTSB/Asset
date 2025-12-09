#> asset:artifact/1332.bebebeam/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1332.bebebeam/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 個数取得
    execute store result score @s 110.Count if data storage asset:context Items.hotbar[{tag:{TSB:{ID:1332}}}]

# 個数+2を発射数とする
    scoreboard players add @s 110.Count 2

# スコア初期化
    scoreboard players set @s 110.Tick 0
    scoreboard players set @s 110.Element -1
    
# まず1発発射する
    function asset:artifact/1332.bebebeam/trigger/beam/

# ループ開始
    schedule function asset:artifact/1332.bebebeam/trigger/loop/ 1t replace

# リセット
    # scoreboard players reset @s 110.Count
