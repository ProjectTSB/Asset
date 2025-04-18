#> asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/attack_0
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/main

# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.2

# ターゲット取得
    execute positioned ~ ~ ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 93.Temp.AttackTarget

# TODO：与えるダメージの調整
# ダメージ
    # ダメージ量
        data modify storage api: Argument.Damage set from storage asset:context this.Damage.TenseiSpear
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function api:damage/modifier
# 対象にダメージ
    execute as @a[tag=93.Temp.AttackTarget] run function api:damage/
# リセット
    function api:damage/reset
    tag @a remove 93.Temp.AttackTarget

# 全プレイヤー位置に攻撃地点を設定
    execute at @a[tag=!PlayerShouldInvulnerable,distance=..40] run summon area_effect_cloud ^ ^ ^ {Duration:25,Tags:["93.Temp.AttackPosition"]}
