# 調査根拠

コード固有の結論を辿る索引。共通規約・記録方針はDevSpaceの `AGENTS.md` と `docs/knowledge-maintenance.md` にある。以下の版・PR状態は確認時点の記録であり、現在のブランチへ適用するときはコードと照合する。

## 構造・契約の根拠

2026-09-15にAsset `8f661ea1003a0e519d9825c55e1dde0ce6edaf80`、本体 `f88cdd5bcb2216d24b26e48684f4a7951a686c94` の定義・管理処理・利用例を静的に照合した。全カテゴリ・全呼出経路の網羅検証やゲーム内の実行検証ではない。

| 結論の所在 | 確認したコードと範囲 |
| --- | --- |
| [型・継承・Field](object-model.md) | Mob 0237→2000、Object 2070→1、Effect 79→29。本体のsummon・register・alias・親探索・context退避・Field保存を照合。診断と強制停止、同一個体のdispatchと別個体への切替を区別 |
| [神器](artifact.md) | 0057のgive/trigger/common check/use、装備Effectとmodifierの利用。`1.trigger`の定型維持はユーザー方針 |
| [MobとAJ](mob.md) | Attack/Hurt handlerのVictim/Attacker、0327のRejoinRule、AJモデル初期化とoptional登録 |
| [Object・生成](runtime-and-tools.md) | 1051の一時score、1069のFieldOverride、1086のmacro、`scripts/`の入力と作用先、CI workflow |

個別Assetの内部リソースを相互参照せず公開API・共通契約を通す方針はユーザー指定であり、全既存実装が従っているという調査結果ではない。

AJ optional登録は `e48a116501b931a6688d5bd77e8f60c82de27ffa` の [global/root/on_load.json](https://github.com/ProjectTSB/Asset-AnimatedJava/blob/e48a116501b931a6688d5bd77e8f60c82de27ffa/AnimatedJava/data/animated_java/tags/functions/global/root/on_load.json) と [global/on_load.json](https://github.com/ProjectTSB/Asset-AnimatedJava/blob/e48a116501b931a6688d5bd77e8f60c82de27ffa/AnimatedJava/data/animated_java/tags/functions/global/on_load.json)、Karmicの対応関数とAsset側initを照合した範囲。

## Wikiとの照合

2026-09-15にWiki snapshot `3a5ede8625a713382dca0e96f46b2a8ed75218c5` の公開16ページと `_Sidebar.md` を全文確認し、上記のAsset・本体の版と照合した。ページ別の採否・直接URLは [wiki-crosscheck.md](wiki-crosscheck.md)。外部リンク先・添付画像自体は対象外。

## PRレビューの根拠と採否

2026-09-14に上記Assetの版と照合。PR一覧は最大500件、inline commentは更新順の3ページ・300件（30 PR、更新日2026-06-01〜09-09）。全履歴の網羅調査ではない。取得記録はDevSpaceの `.runtime/knowledge-research/` にある。

|PR / 直接URL|コメントと差分|PR状態・現行対応|判定|
|---|---|---|---|
|[#2082 r3593135838](https://github.com/ProjectTSB/Asset/pull/2082#discussion_r3593135838)|追加されたartifact計算関数のscore holderが全体定義になるため、`#> Private` / `# @private` を付けるsuggestion。|PRはopen/unmerged。対象 `artifact/1581.reactor_plate` は現行checkoutにない。|未採用。公開範囲は現行の同種宣言で確認するという注意に限定。|
|[#2089 r3593101282](https://github.com/ProjectTSB/Asset/pull/2089#discussion_r3593101282)|Objectのdamage処理末尾で `$UserID Temporary` を「念のため」resetする提案。|PRはopen/unmerged。対象 `object/1169.plasma_beam` は現行checkoutにない。現行 `object/1051.time_laser/tick/damage.mcfunction` には同用途scoreのresetがある。|提案自体は未採用。関数内で確保したTemporaryの寿命確認という限定的な手本。|
|[#2078 r3593182261](https://github.com/ProjectTSB/Asset/pull/2078#discussion_r3593182261)|追加diff内の3つの広域selectorにdistanceがなく、別dimensionまで総当たりするため `..128` 等を付ける提案。|PRはopen/unmerged。対象 `object/1166.after_glow` は現行checkoutにない。現行objectの範囲攻撃にはdistanceやdxで限定する例が反復する。|広域 `@e` の探索範囲確認として採用。全selectorへのdistance/limit強制には一般化しない。|
|[#2101 r3930330651](https://github.com/ProjectTSB/Asset/pull/2101#discussion_r3930330651)|Objectの移動値をprivate scoreへ写す追加diffに対し、`asset:context this`をOhMyDatと同様に使えるとの提案。|PRはopen/unmerged。対象 `object/1160.electric_catfish` は現行checkoutにない。現行 [mob context fetch](../../Asset/data/asset/functions/mob/0106.mini_shulker/tick/target/fetch.mcfunction) や多数のObjectで `asset:context this.*` を利用する。|個体contextの現行契約として採用。ただしAttack/Hurt等のevent入力とは区別する。|

PRの状態・保存diff・確認時点のコードを分けて判定した。RESTのreview commentにはthreadのresolved状態がない。未採用の提案を現行仕様の根拠にしない。

- PR #7 / [comment](https://github.com/ProjectTSB/Asset/pull/7#discussion_r1413035025): 自動 trigger、limit、数値注釈のレビュー。現行 artifact の共通 auto 接続を確認し、個別数値は各実装と照合する。
- PR #9 / [comment](https://github.com/ProjectTSB/Asset/pull/9#discussion_r1437957488): auto check/use と tick 境界のレビュー。提案と回答が混在するため、現行コードにある共通関数利用だけを手順化。
- PR #22 / [comment](https://github.com/ProjectTSB/Asset/pull/22#discussion_r1437806428): HP 条件境界の提案。`matches` の境界は artifact ごとに実コードを読む。
- PR #29 / [comment](https://github.com/ProjectTSB/Asset/pull/29#discussion_r1443587534): `as` 欠落で modifier の実行主体が変わる指摘。現行の対象ファイルが更新済みかは checkout の commit と PR 差分を確認して判断する。
- PR #30 / [comment](https://github.com/ProjectTSB/Asset/pull/30#discussion_r1438557484): Mob の内部値・コメントの指摘。#2112 の内部 ID 修正と併せ、summon/register の ID 一致を検証項目に採用。

Issue [#2113](https://github.com/ProjectTSB/Asset/issues/2113)、[#2106](https://github.com/ProjectTSB/Asset/issues/2106)、[#2063](https://github.com/ProjectTSB/Asset/issues/2063) は装備状態の残留・環境差・回復Mob tagの調査候補として確認したもの。各機能の一般的な契約を確定する根拠とは区別する。
