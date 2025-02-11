#> asset:artifact/0236.health_exchanger/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/236/click/

# ランダムに1人を選択する
        tag @a[tag=HasMaxHealth,sort=random,limit=1] add HasMaxHealthTarget

# //この時点で $SCUserHealthと$MaxHealth,@a のTemporaryに体力が代入済み & hasMaxHealthTag付与済み
# 処理
    # 演算
        # //神器使用者の体力
        scoreboard players operation $UserHealthInt Temporary = $SCUserHealth Temporary
        scoreboard players operation $UserHealthDecimal Temporary = $SCUserHealth Temporary

        scoreboard players operation $UserHealthInt Temporary /= $100 Const
        scoreboard players operation $UserHealthDecimal Temporary %= $100 Const

    # 神器使用者の体力をMaxHealthに変更
        scoreboard players operation $Set Lib = $MaxHealth Temporary
        function lib:score_to_health_wrapper/set
    # @a[tag=HasMaxHealthTarget] の体力を変更
        execute as @a[tag=HasMaxHealthTarget] at @s run function asset:artifact/0236.health_exchanger/click/changed_my_health

# 演出
    # 演算
        # //交換先の体力
        scoreboard players operation $TargetHealthInt Temporary = $MaxHealth Temporary
        scoreboard players operation $TargetHealthDecimal Temporary = $MaxHealth Temporary

        scoreboard players operation $TargetHealthInt Temporary /= $100 Const
        scoreboard players operation $TargetHealthDecimal Temporary %= $100 Const
    # メッセージ「A と体力を交換した！ x.xx => y.yy」
        tellraw @s [{"text":"","color": "yellow"},{"selector":"@a[tag=HasMaxHealthTarget]","color": "yellow"},{"text": " と体力を交換した！ "},{"score":{"name": "$UserHealthInt","objective": "Temporary"}},".",{"score":{"name": "$UserHealthDecimal","objective": "Temporary"}},{"text": " => "},{"score":{"name": "$TargetHealthInt","objective": "Temporary"}},".",{"score":{"name": "$TargetHealthDecimal","objective": "Temporary"}}]

    # パーティクル & 音
        particle totem_of_undying ~ ~ ~ 1 1 1 0 30 force @a
        execute as @a[tag=HasMaxHealthTarget] at @s run particle totem_of_undying ~ ~ ~ 1 1 1 0 30 force @a

        playsound ui.button.click player @s ~ ~ ~ 1 1 1
        execute as @a[tag=HasMaxHealthTarget] at @s run playsound ui.button.click player @s ~ ~ ~ 1 1 1

# リセット
    scoreboard players reset $UserHealthInt Temporary
    scoreboard players reset $UserHealthDecimal Temporary
    scoreboard players reset $TargetHealthInt Temporary
    scoreboard players reset $TargetHealthDecimal Temporary
