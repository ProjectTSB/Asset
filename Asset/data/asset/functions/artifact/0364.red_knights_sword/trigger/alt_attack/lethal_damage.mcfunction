#> asset:artifact/0364.red_knights_sword/trigger/alt_attack/lethal_damage
#
# ヘルスが2になってしまう！致命傷！
#
# @within function asset:artifact/0364.red_knights_sword/trigger/alt_attack/

# 体力を変更
    scoreboard players set $Set Lib 200
    function lib:score_to_health_wrapper/set

# 強制体力変更だとダメージ音が鳴らないので、コマンドで鳴らす
    playsound minecraft:entity.generic.hurt player @a ~ ~ ~ 1 1
