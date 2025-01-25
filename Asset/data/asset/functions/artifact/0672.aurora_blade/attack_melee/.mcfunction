#> asset:artifact/0672.aurora_blade/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/672/attack_melee/

# 演出
    execute positioned ^ ^1.2 ^0.6 rotated ~ ~-4 run function asset:artifact/0672.aurora_blade/attack_melee/vfx
    playsound entity.player.attack.sweep player @a ~ ~ ~ 0.4 1 0
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.8 2 0

# ダメージ
    # ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~300の追加ダメージ
            scoreboard players set $CalcRandom Temporary 201
            scoreboard players operation $RandomDamage Temporary %= $CalcRandom Temporary
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 200

# Argument.Damageに代入 $MPPer >= 70 なら1.5倍
    execute store result storage api: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    execute if score $MPPer Temporary matches 70.. store result storage api: Argument.Damage float 1.5 run scoreboard players get $RandomDamage Temporary

    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"

# 補正functionを実行
    function api:damage/modifier
# ダメージを与える
    execute as @e[type=#lib:living,tag=Victim,distance=..6] run function api:damage/

# リセット
    function api:damage/reset
    scoreboard players reset $CalcRandom Temporary
    scoreboard players reset $RandomDamage Temporary
