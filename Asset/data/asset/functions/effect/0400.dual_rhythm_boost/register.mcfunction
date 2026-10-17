#> asset:effect/0400.dual_rhythm_boost/register
#
# @within function asset:effect/0400.dual_rhythm_boost/_/register

# EffectのID
    data modify storage asset:effect ID set value 400
# Effectの名前
    data modify storage asset:effect Name set value '{"text":"双律・攻","color":"gold"}'
# Effectの説明文
    data modify storage asset:effect Description set value ['{"text":"与ダメージが上昇する","color":"white"}']
# 再付与時は効果時間を更新する
    data modify storage asset:effect DurationOperation set value "forceReplace"
# 効果を重複させない
    data modify storage asset:effect MaxStack set value 1
# 悪い効果かどうか
    data modify storage asset:effect IsBadEffect set value false
# 解除に必要なレベル
    data modify storage asset:effect RequireClearLv set value 3
# スタック数を表示するかどうか
    data modify storage asset:effect StackVisible set value false
