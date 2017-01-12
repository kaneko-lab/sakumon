# sakumon
# Author : Daichi SEKIKAWA 
# Contact : s139584y(at)st.go.tuat.ac.jp

それぞれのファイルの内容

top：トップ画面(学習者はこの画面から始める、アカウント登録等はない)

answer：解答の作成(ガイドなし)
answer_guide：解答の作成(ガイドあり)
blank：トップ画面における右画面などに表示する空のページ
check：見直し(ガイドなし)
check_guide：見直し(ガイドあり)
concept：問題にする内容を決める(ガイドなし)
concept_guide：問題にする内容を決める(ガイドあり)
confirm：作問完了画面

expert_way：学習者に提示する提案手順
form：問題作成フォーム
copy_qa：記入した問題と選択肢がコピー表示される画面
memo：メモ帳
menu：トップ画面におけるメニュー
menu_pose：作問メニュー(ガイドなし)
menu_pose_guide：作問メニュー(ガイドあり)
question.htm：問題の作成(ガイドなし)
question_guide：問題の作成(ガイドあり)
refer：参考資料の記入
start：作問メニュー起動時の中央上画面(ガイドなし)
start_guide：作問メニュー起動時の中央上画面(ガイドあり)
study：解説の作成(ガイドなし)
study_guide：解説の作成(ガイドあり)

verify：提出前の確認画面

question.php：他の問題を見る(問題のみ)
question_list.php：他の問題を見る(解答・解説付き)

以下3つは学習者には関係ない、教師(ポジション)の人が裏で編集
e_insert：提案手順の挿入(.phpは.htmから受け取ったものをSQLに挿入)
e_list：提案手順一覧
e_update：提案手順内容の更新(2でSQLに更新、確認)
