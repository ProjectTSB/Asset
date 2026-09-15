# 調査根拠

## 2026-09-15: master への直接コミット禁止

ユーザーが Asset／TheSkyBlessing の `master` へコミットしない方針を指定した。[AGENTS.md](../../AGENTS.md) のコミット先に反映した。今回の開発環境・ナレッジのコミットは `chore/devspace-environment-and-knowledge` に保持し、ローカル master は作業前の位置へ戻した。今後もコミット前に現在のブランチを確認する。これはユーザーの運用方針であり、Git の機械的な保護設定を導入した記録ではない。

## 2026-09-15: 依頼内容からの自律的なナレッジ参照

ユーザーの方針として、普段の実装・レビュー・調査の依頼に、ナレッジを読む指示や文書名を追記する必要がない運用にする。[AGENTS.md](../../AGENTS.md) に、依頼と対象コードから必要な文書を選び、判断前に本文を読み、依存領域が増えたら参照も追加する手順を明記した。読み取り専用の依頼にも参照規約を適用し、編集禁止は維持する。

DevSpace・本体・Asset の3つの開始位置で `gpt-5.6-sol` / low の新規セッションを使い、読む指示・文書名・必読確認を含めない通常の調査／実装相談から関連本文への到達を確認した。修正前後とも各3件で参照できており、今回の修正による成功率の改善を示す結果ではない。指示の適用範囲を明確にし、自律参照の観測を追加した記録である。依頼文・読取ログ・確認結果は DevSpace の `docs/knowledge-verification.md` とローカル領域 `.runtime/knowledge-research/autonomous-reference/` に保存した。ゲーム内検証や実装課題の合否判定ではない。

## 2026-09-15: 主要契約の再照合

同じ Asset・本体 HEAD で、継承、Field 保存、任意メソッド、Effect、Artifact、Wiki の記述との対応を `gpt-5.6-sol` / low で再照合した。主要モデルの根拠は維持し、次の説明を修正した。

- Mob の `Victim`／`Attacker` は現行にも残る。旧仕様とした記述を撤回し、[mob.md](mob.md) に本体の Attack/Hurt handler を根拠として追加した。
- `call.m` は同一個体の既存 context 内での dispatch であり、別個体の Field をロード・保存しない。[object-model.md](object-model.md) に呼出前提を追加した。
- Effect の modifier 解除は、その型が到達する経路で確認する。0233 の [re-given](../../Asset/data/asset/functions/effect/0233.flame_armor/re-given/.mcfunction) と [remove](../../Asset/data/asset/functions/effect/0233.flame_armor/remove/.mcfunction) を全型の終了処理の証明に一般化しない。
- RejoinRule の配置を旧仕様として一括棄却しない。現行にも [Mob 直下](../../Asset/data/asset/functions/mob/0327.eclael/rejoin_process.mcfunction) と [Artifact の trigger 配下](../../Asset/data/asset/functions/artifact/0600.xtal/trigger/rejoin_process.mcfunction) がある。

## 2026-09-15: AJ の optional 登録を確認

Asset-AnimatedJava HEAD `e48a116501b931a6688d5bd77e8f60c82de27ffa` の [global/root/on_load.json](https://github.com/ProjectTSB/Asset-AnimatedJava/blob/e48a116501b931a6688d5bd77e8f60c82de27ffa/AnimatedJava/data/animated_java/tags/functions/global/root/on_load.json) と [global/on_load.json](https://github.com/ProjectTSB/Asset-AnimatedJava/blob/e48a116501b931a6688d5bd77e8f60c82de27ffa/AnimatedJava/data/animated_java/tags/functions/global/on_load.json) で、各モデル関数の `required:false` 登録を確認した。Karmic の対応関数と Asset 側 init も照合した。以前の「現行対応は未照合」という記述を訂正し、現在も使われている optional 登録として採用する。この確認に生成・同期処理の履歴調査は必要ない。

## 2026-09-15: ProjectTSB Wiki 全文照合

read-only snapshot `3a5ede8625a713382dca0e96f46b2a8ed75218c5` の公開16ページと `_Sidebar.md` を全文確認し、Asset HEAD `8f661ea1003a0e519d9825c55e1dde0ce6edaf80`、本体 HEAD `f88cdd5bcb2216d24b26e48684f4a7951a686c94` と照合した。長文の `create-artifact.md`（1178行）を含め、全ファイルを区間分割して末尾まで確認した。ページ別の実際の範囲、採用した作成意図、旧記述との差、固定 commit の本体根拠は [wiki-crosscheck.md](wiki-crosscheck.md) に記録した。

主な現行 Asset 根拠は Mob `0237`/`2000`、Object `2070`/`0001`、Effect `0079`/`0029` とセット Effect `0233`/`0244`/`0246`、Artifact `0057`/`0355`/`0624`/`0632`、各 alias/tag。本体は summon/register/extends/method dispatch、Effect foreach、Artifact common check/use、API wrapper/coreを固定 HEAD で確認した。外部リンク先と添付画像自体は調査対象外で、本文が読めなかったページはない。

## 2026-09-15: 実装モデルの追加調査

同じ Asset HEAD `8f661ea1003a0e519d9825c55e1dde0ce6edaf80` と本体 HEAD `f88cdd5bcb2216d24b26e48684f4a7951a686c94` のコードから、[型・インスタンス・継承モデル](object-model.md) を追加した。この節の根拠は PR の提案ではなく現行コードである。

| 調査対象 | 確認内容 |
| --- | --- |
| Mob 0237 → 2000 | 親の Field 定義、子の override、super.init を介した同じ個体の this の利用 |
| Object 2070 → 1 | 親が必要とする Field を子の init で設定する順序、条件付き super.tick |
| Effect 79 → 29 | 親定義の継承、未実装 tick の親への fallback、Effects[].Field と this の読込・保存 |
| 本体の Mob／Object summon・triggers・call_method | register 評価、ROM 継承表、alias 呼び出し、親探索、FieldOverride、永続 Field、用途別 stash |
| 本体の Effect foreach・events | Mob／Object と異なるインスタンスの単位、固定イベントと単一親チェーン |

各定義・実装への相対リンクと本体の確認コミットへのリンクは新文書に併記した。`IsAbstract` 等の診断を強制停止と扱わず、ネスト時の完全な復旧を保証しない。Artifact は確認した範囲で同じ実行系を持たず、全カテゴリを一様なクラス機構に分類していない。以前の「this は一時状態」「register は一律に生成対象」という説明を訂正した。

## PR レビューに基づく調査

調査日: 2026-09-14。現行checkoutはHEAD `8f661ea1003a0e519d9825c55e1dde0ce6edaf80`。対象はREADME、`Asset/data/asset/functions` の代表artifact/mob/object、`scripts/` 全体、workflow。PR一覧は最大500件、inline review commentはRESTの `sort=updated&direction=desc&per_page=100` で3ページ取得した。300件は重複なし、30 PRにまたがり、`updated_at` は2026-06-01〜2026-09-09。これは全履歴ではない。代表PRは直近活動、コメント数、artifact/mob/object/APIの論点が偏らないよう選んだ。

代表根拠:

- 直近 inline review: [PR #2082](https://github.com/ProjectTSB/Asset/pull/2082#discussion_r3593135838) は private score、[PR #2089](https://github.com/ProjectTSB/Asset/pull/2089#discussion_r3593101282) は Temporary の後始末、[PR #2078](https://github.com/ProjectTSB/Asset/pull/2078#discussion_r3593182261) は距離 selector、[PR #2101](https://github.com/ProjectTSB/Asset/pull/2101#discussion_r3930330651) は `asset:context this` の利用を扱う。

- [PR #7](https://github.com/ProjectTSB/Asset/pull/7), [PR #9](https://github.com/ProjectTSB/Asset/pull/9): 自動検知、common check/use、selector limit、tick 計算のレビュー。
- [PR #22](https://github.com/ProjectTSB/Asset/pull/22), [PR #49](https://github.com/ProjectTSB/Asset/pull/49): 条件境界、説明とダメージ計算の整合。
- [PR #29](https://github.com/ProjectTSB/Asset/pull/29): `as` 欠落による damage modifier 対象の誤り。
- [PR #30](https://github.com/ProjectTSB/Asset/pull/30): Mob summon、コメントと hard 条件の確認。
- [PR #2098](https://github.com/ProjectTSB/Asset/pull/2098), [PR #2112](https://github.com/ProjectTSB/Asset/pull/2112): `@within` 漏れ、Mob 内部 ID 修正。
- [Issue #2113](https://github.com/ProjectTSB/Asset/issues/2113), [Issue #2106](https://github.com/ProjectTSB/Asset/issues/2106), [Issue #2063](https://github.com/ProjectTSB/Asset/issues/2063): 装備状態の残留、環境差の挙動、回復 Mob tag の運用課題。

採否と不確実性: 採用した規約は現行コードで反復確認できる storage、構造、タグ、スクリプト、CI の事実に限定した。レビュー suggestion のうち採用・修正済みか判断できないものは慣行として断定していない。API の完全な schema と AJ 実行順は本体側依存で、この repo の利用例から推測できる範囲だけを記述した。

inlineコメントの判定（取得した3ページ、各100件）:

|PR / 直接URL|コメントと差分|PR状態・現行対応|判定|
|---|---|---|---|
|[#2082 r3593135838](https://github.com/ProjectTSB/Asset/pull/2082#discussion_r3593135838)|追加されたartifact計算関数のscore holderが全体定義になるため、`#> Private` / `# @private` を付けるsuggestion。|PRはopen/unmerged。対象 `artifact/1581.reactor_plate` は現行checkoutにない。|未採用。公開範囲は現行の同種宣言で確認するという注意に限定。|
|[#2089 r3593101282](https://github.com/ProjectTSB/Asset/pull/2089#discussion_r3593101282)|Objectのdamage処理末尾で `$UserID Temporary` を「念のため」resetする提案。|PRはopen/unmerged。対象 `object/1169.plasma_beam` は現行checkoutにない。現行 `object/1051.time_laser/tick/damage.mcfunction` には同用途scoreのresetがある。|提案自体は未採用。関数内で確保したTemporaryの寿命確認という限定的な手本。|
|[#2078 r3593182261](https://github.com/ProjectTSB/Asset/pull/2078#discussion_r3593182261)|追加diff内の3つの広域selectorにdistanceがなく、別dimensionまで総当たりするため `..128` 等を付ける提案。|PRはopen/unmerged。対象 `object/1166.after_glow` は現行checkoutにない。現行objectの範囲攻撃にはdistanceやdxで限定する例が反復する。|広域 `@e` の探索範囲確認として採用。全selectorへのdistance/limit強制には一般化しない。|
|[#2101 r3930330651](https://github.com/ProjectTSB/Asset/pull/2101#discussion_r3930330651)|Objectの移動値をprivate scoreへ写す追加diffに対し、`asset:context this`をOhMyDatと同様に使えるとの提案。|PRはopen/unmerged。対象 `object/1160.electric_catfish` は現行checkoutにない。現行 [mob context fetch](../../Asset/data/asset/functions/mob/0106.mini_shulker/tick/target/fetch.mcfunction) や多数のObjectで `asset:context this.*` を利用する。|個体contextの現行契約として採用。ただしAttack/Hurt等のevent入力とは区別する。|

REST review commentにはthreadのresolved状態がない。上表は2026-09-14に `gh pr view` で確認したopen/merged状態、保存diff、現行checkoutを分けて判定した。open PRの対象ファイルが現行にない場合、そのsuggestionを「修正済み」とは扱わない。

古いmerged reviewの補助例:
- PR #7 / [comment](https://github.com/ProjectTSB/Asset/pull/7#discussion_r1413035025): 自動 trigger、limit、数値注釈のレビュー。現行 artifact の共通 auto 接続を確認し、個別数値は各実装と照合する。
- PR #9 / [comment](https://github.com/ProjectTSB/Asset/pull/9#discussion_r1437957488): auto check/use と tick 境界のレビュー。提案と回答が混在するため、現行コードにある共通関数利用だけを手順化。
- PR #22 / [comment](https://github.com/ProjectTSB/Asset/pull/22#discussion_r1437806428): HP 条件境界の提案。`matches` の境界は artifact ごとに実コードを読む。
- PR #29 / [comment](https://github.com/ProjectTSB/Asset/pull/29#discussion_r1443587534): `as` 欠落で modifier の実行主体が変わる指摘。現行の対象ファイルが更新済みかは checkout の commit と PR 差分を確認して判断する。
- PR #30 / [comment](https://github.com/ProjectTSB/Asset/pull/30#discussion_r1438557484): Mob の内部値・コメントの指摘。#2112 の内部 ID 修正と併せ、summon/register の ID 一致を検証項目に採用。
