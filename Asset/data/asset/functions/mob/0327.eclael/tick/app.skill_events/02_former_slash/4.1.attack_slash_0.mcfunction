#> asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/4.1.attack_slash_0
#
# アニメーションのイベントハンドラ 前半・連続斬り 回転斬り攻撃判定
#
# @within
#   function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/1.main
#   function asset:mob/0327.eclael/debug_damage

# TODO：演出を練る
# 演出
    particle firework ~ ~1 ~ 0 0 0 0.2 5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.2
    execute positioned ^ ^1 ^ rotated ~70 ~20 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/5.1.particle_slash

# TODO：与えるダメージの調整
# ダメージ
    # ダメージ量
        data modify storage api: Argument.Damage set value 40f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function api:damage/modifier
# 対象に
    execute positioned ~ ~-2 ~ as @a[tag=!PlayerShouldInvulnerable,distance=..4] run function api:damage/
# リセット
    function api:damage/reset
