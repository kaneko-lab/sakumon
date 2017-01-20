-- MySQL dump 10.13  Distrib 5.5.46, for Linux (x86_64)
--
-- Host: localhost    Database: sakumon3
-- ------------------------------------------------------
-- Server version	5.5.46

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_list`
--

LOCK TABLES `question_list` WRITE;
/*!40000 ALTER TABLE `question_list` DISABLE KEYS */;
INSERT INTO `question_list` VALUES (1,'問題例1\r\n課題のプログラムを改編する場合\r\n\r\n第6回に関する問題\r\n出題意図：スコープ外の変数の処理\r\nキーワード：ポインタ、*、&','以下のプログラムは標準入力したa,b,cについてaをa+b+c、bをabc、cをab+bc+caの値に変換するプログラムである。\n以下のプログラムの□に当てはまるプログラム片はどれか。\n\n#include <stdio.h>\n\nvoid sumAndProduct3(int *a, int *b, int *c){\n	int tmp1, tmp2;\n	tmp1 = *a;\n	tmp2 = *b;\n	*a = tmp1 + tmp2 + *c;\n	*b = tmp1 * tmp2 * *c;\n	*c = tmp1 * tmp2 + tmp2 * *c + *c * tmp1;\n}\n\nint main(void){\n	int a, b, c;\n\n	scanf(\"%d %d %d\", &a, &b, &c);\n	sumAndProduct3(□);\n	printf(\"%d %d %d\", a, b, c);\n\n	return 0;\n}','a,b,c','*a, *b, *c','&a,&b,&c','a+b+c, a*b+b*c+c*a, a*b*c',3,'a,b,cだとこの3変数が格納されているアドレスを指していないから。','①と同じ','&を付けることで変数が格納されているアドレスを指します。\r\n','直接変換後の値を出力をしようとしています(課題では禁止事項でしたね)。','第6回講義資料の11ページ以降及び課題のプログラム'),(2,'問題例2\r\n講義資料に載っているプログラムから問題を作る場合\r\n\r\n第6回の内容\r\nポインタが指す番地について理解する\r\nキーワード：&','以下のプログラムを一度実行してみたら1行目に「2948392」が出力された。2,3行目にはそれぞれ何と出力されるか。\n\n#include<stdio.h>\n\nint main(void)\n{\n int i;\n int var[3]={0, 1, 2};\n\n for(i=0;i<3;i++)\n  printf(\"%d\\n\",&var[i]);\n\n return 0;\n}','2948393\r\n2948394','2948396\r\n2948400','2948400\r\n2948408','不定',2,'番地が1ずつ大きくなっていくのは1文字1バイトのchar型の場合です。\r\n','番地が4ずつ大きくなっていくのは1つ4バイトのint型の場合です。\r\n他に、float型も4バイトなので4ずつ大きくなっていきます。','番地が8ずつ大きくなっていくのは1つ8バイトのdouble型の場合です。\r\n','1行目の値が分かっていなければ不定ですが、今回は1行目の値と変数の型が分かっているので2,3行目の値も決まります。','第6回講義資料17ページ'),(3,'※これは良くない問題の例です！！\r\n\r\n問題例3\r\n講義資料に載っているプログラムの変数や関数名を変えただけの問題\r\n\r\n第6回に関する問題\r\n出題意図：スコープ外の変数の処理\r\nキーワード：ポインタ、*、&','main関数内にローカル変数xとyを宣言し，xとyの値をそれぞれx/yの商と余りに変更する，void型の関数SyouandAmariを実装した．ただし，xとyの値は整数である．\r\n\r\n□に入る正しいものを選べ。\r\n\r\n#include <stdio.h>\r\n\r\nvoid SyouandAmari(int *x, int *y){\r\n	int tmp;\r\n	tmp = *x;\r\n	*x = *x / *y;\r\n	*y = tmp % *y;\r\n}\r\n\r\n/* Main function */\r\nint main(void){\r\n	int x, y;\r\n\r\n	scanf(\"%d %d\", &x, &y);\r\n	SyouandAmari(□);	\r\n	printf(\"%d %d\", x, y);\r\n\r\n	return 0;\r\n}','x, y','*x, *y','&x, &y','x/y, x%y',3,'変数が格納されているアドレスを指していないから。','①と同じく。','&を付けることで変数が格納されているアドレスを指します。','直接変換後の値を出力をしようとしています(課題では禁止事項でしたね)。','第6回講義資料の11ページ以降及び課題のプログラム'),(4,'問題例4\r\n文章の穴埋めの問題例\r\n\r\n\r\n第7回に関する問題\r\n出題意図：動的メモリ確保についてと、その際の注意点について理解する。\r\nキーワード：動的メモリ確保、malloc、free','C言語で配列を使用するときは、\r\n\r\nscanf(\"%d\",&n);\r\nint var[n];\r\n\r\nのように、プログラムを実行するときに要素数を決定することができず、コンパイル時に配列要素数が固定済みとなっている必要がある。\r\n\r\nここでCのライブラリには、mallocやcallocなど、プログラム実行時にメモリを動的に確保する仕組みが用意されており、プログラムを実行時にでも要素数を決定することができる。\r\n\r\nこのような動作を(1)という。\r\n\r\n\r\n\r\nまた、(1)をしたときはプログラム終了時にfree関数を用いてメモリの(2)を行わないと、\r\nメモリリークなどの危険性がある。','(1)静的メモリ確保\r\n(2)放置','(1)静的メモリ確保\r\n(2)解放','(1)動的メモリ確保\r\n(2)返却','(1)動的メモリ確保\r\n(2)解放',4,'(1)静的メモリ確保はあまり聞き慣れないと思いますが、普通に配列等でコンパイル時に要素数を決定することです。\n\n(2)放置したらメモリリークなどの危険があります。\n','(1)①と同じ\r\n\r\n(2)メモリの解放をして、その領域を他の変数が使えるようにします。','(1)mallocやcallocなどを用いてメモリを確保することを、動的メモリ確保と言います。\r\n\r\n(2)返却という言い方はあまりしません。','(1)③と同じ\r\n\r\n(2)②と同じ\r\n','第7回講義資料\r\n\r\n「静的メモリ確保」について\r\nhttp://rainbow.pc.uec.ac.jp/edu/program/b1/programming-6.htm\r\n6.メモリ領域の動的確保\r\n\r\n↑外部のWebページを参考にした場合はURLなどを書いておきましょう'),(5,'テスト','1+1＝？','1','2','3','4',2,'no','yes','no','no','教科書'),(6,'テスト2','2×2=？','1','2','3','4',4,'No','No','No','Yes','教科書'),(7,'足し算','1+1＝？','1','2','3','4',2,'違います','そうです','違います','違います','教科書'),(8,'第７回に関する問題\r\n出題意図：ポインタと配列の理解\r\nキーワード：ポインタ、配列、*','以下のプログラムは配列の３番目の要素を表示するプログラムである．すなわち\"3\"が出力されればよい．プログラム中の□に当てはまるものを選べ．\r\n\r\n#include	<stdio.h>\r\nvoid	main()\r\n{\r\n	int I[5] = { 5, 4, 3, 2, 1 };\r\n	int *p = &I[0];\r\n	printf(\"3番目の要素は%dです．\", □);\r\n}','*p+2','p+2','*(p+2)','*p[2]',3,'先頭の要素を取り出し，そこに2を足した結果が出力されてしまいます．（今回の場合は7）','要素を取り出したい場合には*が必要です．','正解です．*の後を括弧で囲むことで取り出す配列の要素を指定できます．','コンパイルエラーとなってしまいます．p[2]と書けば適切な答えが出力されます．','第7回講義資料16ページ'),(9,'第7回に関する問題\r\n配列では連続した領域が確保されることと、変数の型によるバイト数の違いを知っているかを問う。','以下のプログラムを作成したとする。\r\n\r\n#include<stdio.h>\r\n\r\nint main(void){\r\n  int array[10]={0,1,2,3,4,5,6,7,8,9};\r\n  int *p1=&array[0];\r\n\r\n  printf(\"address: %d\\n\",p1);\r\n  return 0;\r\n}\r\n\r\nこのプログラムを実行したときの出力が\r\naddress: 1368247168\r\nであったとき、アドレス1268247176(出力結果に8を加えたアドレス)に格納されている値は何であったか、次の4つから選べ。','1','2','8','①から③のどれでもない',2,'配列はメモリの連続領域を確保しており、変数の型によって配列の要素1つあたりの大きさが異なる。\r\np1には配列の先頭アドレスが格納されており、この結果となるためには変数の型が8バイトでなければならない。\r\n8バイトの変数はdouble型であり、配列の宣言と異なるので誤答。','上記と同様にして考えると1つあたり4バイトの変数であることがわかる。4バイトの変数はint型とfloat型であるので正答。','同様にして、1つあたりが1バイトとなるので誤答。ちなみに1バイトの変数はchar型。','②が答えなので誤答。','プログラミング基礎演習 第7回講義資料'),(10,'第7回に関する問題\r\n\r\n・配列の動的確保（mallocの使い方）\r\n・int型のバイト数\r\n\r\n配列要素のアドレスの呼び出し方の一つを問うもの．','以下のソースコードを実行した結果として正しいものを一つ選べ．\r\n\r\n#include <stdio.h>\r\n#include <stdlib.h>\r\n\r\nint main(){\r\n    int i = 0;\r\n    int *li = (int*)malloc(sizeof(int)*10);\r\n\r\n    for(i=0;i<10;i++)li[i]=5*i;\r\n    printf(\"%d\\n\",*(li+4));\r\n    free(li);\r\n    return 0;\r\n}','4','20','9','14',2,'「li+4」のliは0という値ではなくアドレスを示している．また，liは「0,5,10,15…」という配列の先頭アドレスのため，領域外を参照しない限り4という値は出ることがない．','「li+4」は，liの0番目の要素のアドレスから16(つまり4*sizeof(int))だけ進めたアドレスを示している．従ってこれは「li[4]」と同じため，20となる．','1と同様．','1と同様．','プログラミング基礎演習　講義スライド　第七回　p.16'),(11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'第８回に関する問題\r\n出題意図：ポインタのポインタについて理解する\r\nキーワード：ポインタのポインタ、malloc','以下は文字列型の配列を動的に確保するプログラム片である．\r\n各空欄に当てはまるものの組み合わせで正しいものを１つ選べ．\r\n\r\n(1)□WordList;\r\nWordList = ((2)□)malloc(sizeof((3)□)*1000);\r\nWordList[0] = ((4)□)malloc(50);','(1)char**　(2)char**　(3)char*　(4)char*','(1)char**　(2)char*　(3)char*　(4)char','(1)char**　(2)char**　(3)char　(4)char*','(1)char*　(2)char*　(3)char　(4)char',1,'正解です．(1)(2)は「char型の配列」(char*型)の配列なので「*」が２つつき，(3)(4)はchar型の配列なので「*」が１つつきます．\r\n','(2)は「char型の配列」(char*型)の配列の動的確保です．また(4)は「char型の配列」の動的確保です．','この場合「char型の配列」の配列の動的確保なので(3)に入る１つあたりのサイズは「char型の配列」(char*型)１個分になります．','①と同じ．','第8回講義資料9ページ'),(13,'第8回に関する問題\r\n\r\n出題意図：ポインタのポインタを利用した2次元配列の作成\r\nキーワード：ダブルポインタ','以下のソースコードは30*30の２次元配列を確保し，適当な数値を代入して表示するプログラムである．(1)，(2)に当てはまる組を選べ．\r\n\r\n#include <stdio.h>\r\n#include <stdlib.h>\r\n\r\nint main(){\r\n    int i = 0,j=0;\r\n    int **matrix = (1);\r\n    for(i=0;i<30;i++)matrix[i] = (2);\r\n    for(i=0;i<30;i++)for(j=0;j<30;j++)matrix[i][j] = 10*i + j;\r\n    for(i=0;i<30;i++){\r\n        for(j=0;j<30;j++)printf(\"%d \",matrix[i][j]);\r\n        printf(\"\\n\");\r\n    }\r\n\r\n    for(i=0;i<30;i++)free(matrix[i]);\r\n    free(matrix);\r\n    return 0;\r\n}','(1) : (int**)malloc(sizeof(int**)*30)\r\n\r\n(2) : (int*)malloc(sizeof(int)*30)','(1) : (int*)malloc(sizeof(int*)*30)\r\n\r\n(2) : (int)malloc(sizeof(int)*30','(1) : (int**)malloc(sizeof(int*)*30)\r\n\r\n(2) : (int*)malloc(sizeof(int)*30)','(1) : (int**)malloc(sizeof(int)*30)\r\n\r\n(2) : (int)malloc(sizeof(int)*30)',3,'(2)は合っているが，(1)が間違っている．確保するメモリサイズはポインタのポインタ30個分ではなく，ポインタ30個分でなくてはならないため誤りである．','(1)ではポインタのポインタに対して(int*)というポインタを代入しようとしている．また，(2)についてはmalloc関数の右括弧が足りないという構文エラー，そしてポインタに対してint型を代入しようとしているため誤りである．','matrixはポインタのポインタであるため，(int**)としてキャストしなければならない．また，matrix[0]などはポインタであるため，動的に確保するサイズはsizeof(int*)を30個となる．同様に，matrix[0]などはポインタであるため，(int*)としてキャストしなければならない．また，その中身はint型であるのでsizeof(int)を30個となる．','(1)ではmatrix[0]の型がintになってしまっている．また，(2)ではintの型の中にintの型を30個代入しようとしているため誤りである．','プログラミング基礎演習　講義スライド 第8回 p.9'),(14,'第6回に関する問題\r\n参照渡しについて理解しているかを問う。\r\n','以下のプログラムを作成した。\r\n\r\n#include<stdio.h>\r\n\r\nvoid func1(int p){\r\n  p=p*10;\r\n}\r\n\r\nvoid func2(int x[]){\r\n  x[0]=x[0]*10;\r\n}\r\n\r\nint main(void){\r\n  int num=10;\r\n  int array[1]={10};\r\n\r\n  func1(&num);\r\n  func2(array);\r\n\r\n  printf(\"     num: %d\\n\",num);\r\n  printf(\"array[0]: %d\\n\",array[0]);\r\n\r\n  return 0;\r\n}\r\n\r\nこのプログラムを動かした際の結果は、次の4つのうちどれになるか答えよ。','     num: 10\r\narray[0]: 10','     num: 100\r\narray[0]: 10','     num: 10\r\narray[0]: 100','     num: 100\r\narray[0]: 100',3,'問題文のプログラムにおいてfunc2は配列名を渡し、引数にint x[](=int *x)を指定しているので、配列の参照渡しに成功している。よって、array[0]は100となっているはずなので誤答。','①と同様の理由で誤答。','前述の通りfunc2において配列の参照渡しには成功しているが、func1では参照渡しに失敗している。正しくは\r\nvoid func1(int *p){\r\n  *p=(*p)*10;\r\n}\r\nのようになっていなければならない。\r\nよってnumは10倍されずにいるので、これが正答。','③にある通り、int型の変数の参照渡しに失敗しているので誤答。','プログラミング基礎演習 第6回講義資料\r\n'),(15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'第7回に関する問題\r\n出題意図：配列のポインタの扱い方について\r\nキーワード：配列，ポインタ','以下は配列hairetuに添え字と同じ値を代入するプログラムである．\r\n【A】【B】に当てはまるものとして正しいものを選べ\r\n\r\nint main(){\r\n int hairetu[10];\r\n\r\n dainyu(【A】);\r\n}\r\n\r\nvoid dainyu(int *hairetu){\r\n int i;\r\n for(i=0;i<=9;i++){\r\n  【B】=i;\r\n }\r\n}','【A】hairetu\r\n【B】*(hairetu + i)','【A】hairetu\r\n【B】hairetu[i]','【A】&hairetu\r\n【B】*(hairetu + i)','【A】&hairetu\r\n【B】hairetu[i]',1,'【A】\r\n関数dainyuの引数はint型のポインタ変数．\r\nhairetuはhairetu[0]のアドレスを指すので，【A】はhairetu.\r\n【B】\r\nhairetu+iはhairetu[i]のアドレスを指す．アドレスに*をつけることで，そのアドレスが示す変数の中身の事を指すので，【B】は*(hairetu + i)．','【A】\r\n関数dainyuの引数はint型のポインタ変数．\r\nhairetuはhairetu[0]のアドレスを指すので，【A】はhairetu.\r\n【B】\r\nmain関数から受け取った値はhairetuの先頭アドレスのみ．\r\n関数内で配列hairetuは定義されていないのでhairetu[i]は間違い．','【A】\r\nhairetuは配列hairetuの先頭のアドレス．\r\nhairetuに&をつけても指し示す先はないので間違い．\r\n【B】\r\nhairetu+iはhairetu[i]のアドレスを指す．アドレスに*をつけることで，そのアドレスが示す変数の中身の事を指すので，【B】は*(hairetu + i)．','【A】\r\nhairetuは配列hairetuの先頭のアドレス．\r\nhairetuに&をつけても指し示す先はないので間違い．\r\n【B】\r\nmain関数から受け取った値はhairetuの先頭アドレスのみ．\r\n関数内で配列hairetuは定義されていないのでhairetu[i]は間違い．','プログラミング基礎演習\r\n第7回 ポインタと動的メモリ確保'),(17,'第8回に関する問題\r\n\r\n出題意図：動的メモリの確保\r\n\r\nキーワード：動的メモリの確保，解放','動的メモリの確保を用いた以下のプログラムがある．free(a)を入れるべき箇所を(1)～(4)から選べ．\r\n\r\nvoid main(){\r\n\r\nint i,x;\r\nint **a;\r\n\r\na=(int**)malloc(sizeof(int*)*100);\r\n\r\n(1)\r\n\r\nfor(i=0;i<100;i++){\r\nscanf(\"%d\",&x);\r\na[i]=(int*)malloc(sizeof(int)*x);\r\n}\r\n\r\n(2)\r\n       \r\n        ・\r\n        ・（aに関わる何らかの処理）\r\n        ・\r\n\r\n(3)\r\n\r\nfor(i=0;i<100;i++)\r\nfree(a[i]);\r\n\r\n(4)\r\n\r\n}\r\n','(1)','(2)','(3)','(4)',4,'aを確保してすぐに解放してしまってはいけません','aに関わる処理を行う前に解放してしまってはいけません\r\n','各a[i]についての解放前に解放してしまうと，各a[i]の解放が正しく実行できません','各a[i]を解放して，最後にaを解放しましょう','第8回講義資料'),(18,'第6回に関する問題\r\n配列を引数とする関数について','引数の配列の内容を書き換える関数functionを呼び出したい場合、main関数内のfunction呼び出し部分の空欄に当てはまるものとして正しいものはどれか。\r\n\r\nvoid function(int x[]){…}\r\n\r\nint main(void){\r\nint x[5];\r\nfunction(　　　　　);\r\nreturn 0;\r\n}','x','&x','x[0]','&x[5]',1,'関数に配列を渡す場合、その先頭のアドレスを渡すことになります。\r\n配列の場合、変数名のみを書くことでその先頭のアドレスを指します。\r\nこのため、変数名だけを書けば十分となります。','通常の変数の場合には参照渡しの際に「&」が必要となりましたが、配列の場合は不要となります。','x[0]という書き方では、配列xの0番目の要素を指します。今回の問題では関数functionは配列の内容を書き換えるものであるため、配列自体を関数に渡す必要があります。この書き方では配列が渡せません。','配列の宣言ではx[5]と書いていますが、この場合に実際に配列として確保されるのはx[0]からx[4]までの5個だけになります。x[5]は配列の外になるため、この部分へのアクセスは危険です。','第6回講義資料17ページ\r\n'),(19,'第6回に関する問題\r\n出題意図：ポインタに関する演算子について\r\nキーワード：アドレス演算子，間接演算子\r\n','以下のうち，int型の変数aのアドレスを指しているものはどれか','①*a\r\n','②*&a\r\n','③&*&a\r\n','④*&*&a',3,'*はアドレスを指す変数，もしくはアドレスそのものの前につけたとき，\r\nそのアドレスが指し示す変数の値を表す演算子です．int型の値であるaの前につけても指し示す先がありません．よって不正解です．','*&aは「aのアドレスが指している変数の値」つまりはaの値の事を指しているので不正解です．','&*&aは「aのアドレスが指している変数のアドレス」つまり，aのアドレスの事を指しているので正解です．','*&*&aは「aがのアドレスが指している変数のアドレスが指している変数の値」つまり，aの値を指しています．よって不正解．','プログラミング基礎演習\r\n第6回 ポインタ'),(20,'第7回に関する問題\r\n\r\n出題意図：動的メモリの確保\r\n\r\nキーワード：malloc,calloc','以下の処理を実行した場合，a,bについての記述(ア)，(イ)の正しい方を選べ．また，a,bの違いをなくすためにどのように処理を変更すればよいか(ウ)，(エ)から選び，正しい組み合わせを(1)～(4)から選べ．\r\n\r\nvoid main(){\r\n\r\nint *a, *b;\r\n\r\na=(int*)malloc(sizeof(int)*10);\r\n\r\nb=(int*)calloc(10,sizeof(int));\r\n\r\n}\r\n\r\n(ア)aの領域には全て1が格納されている\r\n\r\n(イ)bの領域には全て0が格納されている\r\n\r\n(ウ)a=(int*)malloc(sizeof(int)*10);\r\n    memset(a,0,sizeof(int));\r\n\r\n(エ)b=(int*)calloc(10,sizeof(int));\r\n    memset(b,1,sizeof(int));','(ア)，(ウ)','(ア)，(エ)','(イ)，(ウ)','(イ)，(エ)',3,'mallocで確保される領域に確保される値は決まっていない','①と同じ','正解であるが，実行時間や細かい挙動が異なる．','①と同じ','第7回講義資料'),(21,'第7回に関する問題\r\n動的メモリ確保について','以下のプログラム片は、入力された数の配列を動的メモリ確保する処理を行う部分である。3行目の空欄に入るものとして、正しいものはどれか。\r\n\r\nint *pData, size;\r\nsize = scanf(\"%d\",&size);\r\npData = (     )malloc(sizeof(int)*size);\r\n…','void*','int','int*','char*',3,'malloc関数の返り値はvoid*型であるが、実際に使用する際にはこれを適した型に変換する必要がある。この例ではpData変数はint型のポインタであるため、(int*)として変換する。','この例ではpData変数はint型のポインタである。このため、malloc関数の返り値をint型のポインタとして変換する必要がある。(int)と書いた場合ではint型の数値として変換されるため間違いである。','malloc関数の返り値をint型のポインタに変換するため、(int*)と書くのが正解である。','この例ではpData変数はint型のポインタである。このため、malloc関数の返り値をchar型ではなくint型のポインタとして変換する必要がある。','第7回講義資料 19ページ以降');
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

-- Dump completed on 2017-01-20 19:43:44
