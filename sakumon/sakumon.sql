-- MySQL dump 10.16  Distrib 10.1.19-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.19-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `question_list`
--

DROP TABLE IF EXISTS `question_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_list` (
  `no` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `concept` text,
  `question` text,
  `choice1` text,
  `choice2` text,
  `choice3` text,
  `choice4` text,
  `choice_a` int(11) DEFAULT NULL,
  `study1` text,
  `study2` text,
  `study3` text,
  `study4` text,
  `refer` text,
  UNIQUE KEY `no` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_list`
--

LOCK TABLES `question_list` WRITE;
/*!40000 ALTER TABLE `question_list` DISABLE KEYS */;
INSERT INTO `question_list` VALUES (1,'問題例1\r\n課題のプログラムを改編する場合\r\n\r\n第6回に関する問題\r\n出題意図：スコープ外の変数の処理\r\nキーワード：ポインタ、*、&','以下のプログラムは標準入力したa,b,cについてaをa+b+c、bをabc、cをab+bc+caの値に変換するプログラムである。\n以下のプログラムの□に当てはまるプログラム片はどれか。\n\n#include <stdio.h>\n\nvoid sumAndProduct3(int *a, int *b, int *c){\n	int tmp1, tmp2;\n	tmp1 = *a;\n	tmp2 = *b;\n	*a = tmp1 + tmp2 + *c;\n	*b = tmp1 * tmp2 * *c;\n	*c = tmp1 * tmp2 + tmp2 * *c + *c * tmp1;\n}\n\nint main(void){\n	int a, b, c;\n\n	scanf(\"%d %d %d\", &a, &b, &c);\n	sumAndProduct3(□);\n	printf(\"%d %d %d\", a, b, c);\n\n	return 0;\n}','a,b,c','*a, *b, *c','&a,&b,&c','a+b+c, a*b+b*c+c*a, a*b*c',3,'a,b,cだとこの3変数が格納されているアドレスを指していないから。','①と同じ','&を付けることで変数が格納されているアドレスを指します。\r\n','直接変換後の値を出力をしようとしています(課題では禁止事項でしたね)。','第6回講義資料の11ページ以降及び課題のプログラム'),(2,'問題例2\r\n講義資料に載っているプログラムから問題を作る場合\r\n\r\n第6回の内容\r\nポインタが指す番地について理解する\r\nキーワード：&','以下のプログラムを一度実行してみたら1行目に「2948392」が出力された。2,3行目にはそれぞれ何と出力されるか。\n\n#include<stdio.h>\n\nint main(void)\n{\n int i;\n int var[3]={0, 1, 2};\n\n for(i=0;i<3;i++)\n  printf(\"%d\\n\",&var[i]);\n\n return 0;\n}','2948393\r\n2948394','2948396\r\n2948400','2948400\r\n2948408','不定',2,'番地が1ずつ大きくなっていくのは1文字1バイトのchar型の場合です。\r\n','番地が4ずつ大きくなっていくのは1つ4バイトのint型の場合です。\r\n他に、float型も4バイトなので4ずつ大きくなっていきます。','番地が8ずつ大きくなっていくのは1つ8バイトのdouble型の場合です。\r\n','1行目の値が分かっていなければ不定ですが、今回は1行目の値と変数の型が分かっているので2,3行目の値も決まります。','第6回講義資料17ページ'),(3,'※これは良くない問題の例です！！\r\n\r\n問題例3\r\n講義資料に載っているプログラムの変数や関数名を変えただけの問題\r\n\r\n第6回に関する問題\r\n出題意図：スコープ外の変数の処理\r\nキーワード：ポインタ、*、&','main関数内にローカル変数xとyを宣言し，xとyの値をそれぞれx/yの商と余りに変更する，void型の関数SyouandAmariを実装した．ただし，xとyの値は整数である．\r\n\r\n□に入る正しいものを選べ。\r\n\r\n#include <stdio.h>\r\n\r\nvoid SyouandAmari(int *x, int *y){\r\n	int tmp;\r\n	tmp = *x;\r\n	*x = *x / *y;\r\n	*y = tmp % *y;\r\n}\r\n\r\n/* Main function */\r\nint main(void){\r\n	int x, y;\r\n\r\n	scanf(\"%d %d\", &x, &y);\r\n	SyouandAmari(□);	\r\n	printf(\"%d %d\", x, y);\r\n\r\n	return 0;\r\n}','x, y','*x, *y','&x, &y','x/y, x%y',3,'変数が格納されているアドレスを指していないから。','①と同じく。','&を付けることで変数が格納されているアドレスを指します。','直接変換後の値を出力をしようとしています(課題では禁止事項でしたね)。','第6回講義資料の11ページ以降及び課題のプログラム'),(4,'問題例4\r\n文章の穴埋めの問題例\r\n\r\n\r\n第7回に関する問題\r\n出題意図：動的メモリ確保についてと、その際の注意点について理解する。\r\nキーワード：動的メモリ確保、malloc、free','C言語で配列を使用するときは、\r\n\r\nscanf(\"%d\",&n);\r\nint var[n];\r\n\r\nのように、プログラムを実行するときに要素数を決定することができず、コンパイル時に配列要素数が固定済みとなっている必要がある。\r\n\r\nここでCのライブラリには、mallocやcallocなど、プログラム実行時にメモリを動的に確保する仕組みが用意されており、プログラムを実行時にでも要素数を決定することができる。\r\n\r\nこのような動作を(1)という。\r\n\r\n\r\n\r\nまた、(1)をしたときはプログラム終了時にfree関数を用いてメモリの(2)を行わないと、\r\nメモリリークなどの危険性がある。','(1)静的メモリ確保\r\n(2)放置','(1)静的メモリ確保\r\n(2)解放','(1)動的メモリ確保\r\n(2)返却','(1)動的メモリ確保\r\n(2)解放',4,'(1)静的メモリ確保はあまり聞き慣れないと思いますが、普通に配列等でコンパイル時に要素数を決定することです。\n\n(2)放置したらメモリリークなどの危険があります。\n','(1)①と同じ\r\n\r\n(2)メモリの解放をして、その領域を他の変数が使えるようにします。','(1)mallocやcallocなどを用いてメモリを確保することを、動的メモリ確保と言います。\r\n\r\n(2)返却という言い方はあまりしません。','(1)③と同じ\r\n\r\n(2)②と同じ\r\n','第7回講義資料\r\n\r\n「静的メモリ確保」について\r\nhttp://rainbow.pc.uec.ac.jp/edu/program/b1/programming-6.htm\r\n6.メモリ領域の動的確保\r\n\r\n↑外部のWebページを参考にした場合はURLなどを書いておきましょう');
/*!40000 ALTER TABLE `question_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suggestion`
--

DROP TABLE IF EXISTS `suggestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suggestion` (
  `current` int(11) DEFAULT NULL,
  `purpose` text,
  `next` int(11) DEFAULT NULL,
  `next_purpose` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suggestion`
--

LOCK TABLES `suggestion` WRITE;
/*!40000 ALTER TABLE `suggestion` DISABLE KEYS */;
INSERT INTO `suggestion` VALUES (0,'どこから始めるべきかわからない',1,'資料や他の問題を見てどこを問題にするかを決めましょう。'),(0,'どこから始めるべきかわからない',2,'問題にしたい部分のキーワード等を書き出してみましょう。'),(2,'どこを問題にすればいいかわからない',1,'資料を見てどこを問題にするか決めましょう。ほかの問題を見てその類題を作るのも手です(問題例1)。ただ変数を変えただけ等は避けましょう(問題例3)。'),(2,'問題にする内容がまとまった、問題から先に作る。',3,'まとめた内容をもとに問題を作成してみましょう'),(2,'問題にする内容がまとまった、解答から先に作る。',4,'まとめた内容をもとに解答を作成してみましょう'),(3,'問題文、問題にするプログラムが決まらない',1,'資料や他の問題を参考にしてみましょう。課題で作成したプログラムを改編するのも手です(問題例1)。ただ変数を変えただけ等は避けましょう(問題例3)。'),(3,'問題文ができた',4,'問題を先に作成したのなら次は解答となる選択肢を作成しましょう。'),(3,'問題文ができた',5,'問題と解答どちらもできたのなら次に各選択肢に対する解説を作っていきましょう。'),(4,'選択肢が作れない',1,'参考資料や他の問題を見て、似て非なる選択肢を作れるところを探してみましょう。必ず4択まで作るようにしましょう。'),(4,'選択肢を4択まで作成できた',3,'問題文がまだなら問題文を作成しましょう。'),(4,'選択肢を4択まで作成できた',5,'問題文と解答どちらもできたのなら次に各選択肢に対する解説を作っていきましょう。'),(5,'解説が作れない',1,'選択肢に他の単元が絡むものがあったら、場合によってはその部分の復習も必要になってくると思います。参考資料を見て、その問題では誤答の選択肢でも、そこから学ぶことができるような解説を作っていきましょう。'),(5,'4つの選択肢すべてに対する解説が作成できた',6,'最後に、ここまで作成したものを見直してみましょう。'),(6,'問題文にミスや誤字・脱字があった',3,'下の戻るボタンを押して入力フォームに戻り、問題文の作成に戻って修正しましょう。プログラムを用いた問題であったらツール等で動作を確認してみましょう。'),(6,'解答(選択肢)にミスや誤字・脱字があった',4,'下の戻るボタンを押して入力フォームに戻り、解答の作成に戻って修正しましょう。プログラムを用いた問題であったら各選択肢の解答を当てはめてみて、それぞれの動作を確認してみましょう。'),(6,'解説にミスや誤字・脱字があった',5,'下の戻るボタンを押して入力フォームに戻り、解説の作成に戻って修正しましょう。必要に応じてまた資料を見てみるなど、一連の工程を繰り返したどってみましょう。'),(6,'ミスや誤字・脱字がなかった！',7,'ミスや誤字・脱字がなければ下の提出ボタンを押して提出しましょう。お疲れ様でした。'),(3,'問題文、問題にするプログラムが決まらない',2,'問題にする内容がまとまっていないからと考えられます。キーワード等や解にしたい部分を書き出してみましょう。');
/*!40000 ALTER TABLE `suggestion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-12 21:12:44

