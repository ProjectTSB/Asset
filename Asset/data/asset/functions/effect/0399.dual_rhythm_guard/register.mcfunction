#> asset:effect/0399.dual_rhythm_guard/register
#
# @within function asset:effect/0399.dual_rhythm_guard/_/register

# EffectのID
    data modify storage asset:effect ID set value 399
# Effectの名前
    data modify storage asset:effect Name set value '{"text":"双律・守","color":"aqua"}'
# Effectの説明文
    data modify storage asset:effect Description set value ['{"text":"被ダメージを軽減する","color":"white"}']
# 効果時間（tick）
    data modify storage asset:effect Duration set value 2147483647
# 最大効果時間（tick）
    data modify storage asset:effect MaxDuration set value 2147483647
# 再付与時は効果時間を更新する。
    data modify storage asset:effect DurationOperation set value "forceReplace"
# 効果を重複させない。
    data modify storage asset:effect MaxStack set value 1
# 悪い効果かどうか
    data modify storage asset:effect IsBadEffect set value false
# 解除に必要なレベル
    data modify storage asset:effect RequireClearLv set value 3
# スタック数を表示するかどうか
    data modify storage asset:effect StackVisible set value false
# 死亡時にEffectを削除する。
    data modify storage asset:effect ProcessOnDied set value "remove"
