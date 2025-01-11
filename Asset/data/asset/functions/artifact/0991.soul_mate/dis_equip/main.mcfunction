#> asset:artifact/0991.soul_mate/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0991.soul_mate/dis_equip/

# 演出
    playsound minecraft:entity.ghast.scream player @a ~ ~ ~ 1 0.8
    playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 0.8
    execute anchored eyes positioned ^ ^ ^ run particle soul ~ ~0.5 ~ 0 0 0 0.01 5

# ダメージ
    # 引数の設定
    # 与えるダメージ
        execute store result storage api: Argument.Damage float 0.30 run attribute @s generic.max_health get 1
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "None"
    # 属性耐性・防御力/防具強度・耐性エフェクトを無視するか否か
        data modify storage api: Argument.BypassResist set value true
    # 補正を無視
        data modify storage api: Argument.FixedDamage set value true
    # キルログ
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは魂の接続が途絶えた","with":[{"selector":"@s"}]}]']
    # 補正functionを実行
    function api:damage/modifier
# ダメージ
    function api:damage/
# リセット
    function api:damage/reset

# 効果
    data modify storage api: Argument.ID set value 264
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
# メッセージ
    tellraw @a[tag=RJ.SoulMate] [{"selector":"@s","color":"dark_red"},{"text":"がソウルメイトを脱退しました。","color":"dark_red"}]

# タグ付与

    tag @s remove RJ.SoulMate
