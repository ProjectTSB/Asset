#> asset:effect/0401.dual_rhythm_cooldown/register
#
# 指定された時間だけ軽減効果の再付与を待機させる
#
# @within function asset:effect/0401.dual_rhythm_cooldown/_/register

# EffectのID
    data modify storage asset:effect ID set value 401
# Effectの名前
    data modify storage asset:effect Name set value '{"text":"双律・静","color":"gray"}'
# Effectの説明文
    data modify storage asset:effect Description set value ['{"text":"双律の印章の被ダメージ軽減を再付与できない状態"}']
# 効果を重複させない
    data modify storage asset:effect MaxStack set value 1
# 悪い効果かどうか
    data modify storage asset:effect IsBadEffect set value true
# アイコンを表示するかどうか
    data modify storage asset:effect Visible set value true
# スタック数を表示するかどうか
    data modify storage asset:effect StackVisible set value false
# 死亡時にEffectを削除しない
    data modify storage asset:effect ProcessOnDied set value "keep"
# 解除に必要なレベル
    data modify storage asset:effect RequireClearLv set value 3
