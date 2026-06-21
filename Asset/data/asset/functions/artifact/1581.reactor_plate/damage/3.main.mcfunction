#> asset:artifact/1581.reactor_plate/damage/3.main
#
# スタックに応じて暴発ダメージ(攻撃するときだけ一瞬持つように運用するのはずるいのでホットバー検知にした)
#
# @within function asset:artifact/1581.reactor_plate/damage/2.check_condition


# 特定 ID の Effect 情報を取得はcheckで済み

# 基礎ダメージとバフ量指定(Damage+Baf*スタック数=与ダメ)
    scoreboard players set $17X.Damage Temporary 0
    scoreboard players set $17X.Baf Temporary 20
# 計算処理
    function asset:artifact/1581.reactor_plate/trigger/calculate

# 演出
    function asset:artifact/1581.reactor_plate/damage/vfx/explode

# (暴発)自爆ダメージ(計算機構でダメージ量は指定)
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.DeathMessage append value '[{"translate":"%1$sは熱に浮かされすぎた","with":[{"selector":"@s"}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate":"%1$sは魔力炉の暴発に巻き込まれた","with":[{"selector":"@s"}]}]'
    data modify storage api: Argument.FixedDamage set value true
    function api:damage/
    function api:damage/reset

# 効果削除
    data modify storage api: Argument.ID set value 377
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
