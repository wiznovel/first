[_tb_system_call storage=system/_Final.ks]

[cm  ]
[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="fadeIn"  storage="black.jpg"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
Вспомнив всё произошедшее: всё, что я видела и слышала, всё, чему стала свидетелем, я поняла...[p]
[_tb_end_text]

[jump  storage="Final.ks"  target="*EnoughtClue"  cond="f.Clue>6"  ]
[jump  storage="Final.ks"  target="*NotEnoughtClue"  ]
*EnoughtClue

[tb_start_text mode=1 ]
... что у меня есть все доказательства вины Джо.[p]
[_tb_end_text]

[tb_ptext_show  x="410"  y="350"  size="30"  color="0xffffff"  time="1000"  face="Georgia"  name="Sherlock"  text="Достижение:&nbsp;Шерлок&nbsp;Холмс."  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="380"  y="380"  size="30"  color="0xffffff"  time="1000"  text="Вы&nbsp;нашли&nbsp;достаточно&nbsp;улик&nbsp;против&nbsp;Джо"  anim="false"  face="Georgia"  edge="undefined"  shadow="undefined"  name="EnoughtClue"  ]
[wait  time="3000"  ]
[tb_ptext_hide  time="1000"  ]
[tb_start_text mode=1 ]
На следующий день я прямо с утра отправилась в полицейский участок, чтобы написать заявление.[p]
Все мои показания были проверены, и вскоре Джо был арестован за торговлю ZИ.[p]
А значит, все мои друзья, одноклассники и другие учащиеся Винстер Хай отныне были в безопасности.[p]
[_tb_end_text]

[jump  storage="Final.ks"  target="*HappyNickEnd"  cond="f.Nick>6"  ]
[jump  storage="Final.ks"  target="*HappyMiaEnd"  cond="f.Mia>6"  ]
[jump  storage="Final.ks"  target="*TheEnd"  ]
*HappyNickEnd

[chara_show  name="Nick"  time="1000"  wait="true"  storage="chara/5/Nick_full.png"  width="397"  height="548"  left="-50"  top="219"  reflect="false"  ]
[tb_start_text mode=1 ]
А ещё через несколько дней, отчаяно смущаясь и краснея, Ник предложил мне встречаться. Я была совсем не против.[p]
[_tb_end_text]

[tb_ptext_show  x="389.99998474121094"  y="339.99999237060547"  size="30"  color="0x02A5EF"  time="1000"  name="WithNick"  text="Достижение:&nbsp;отношения&nbsp;с&nbsp;Ником"  face="Georgia"  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="300.00001525878906"  y="409.99999237060547"  size="30"  color="0x009bf5"  time="1000"  text="Вы&nbsp;набрали&nbsp;достаточно&nbsp;баллов&nbsp;отношений&nbsp;с&nbsp;Ником"  anim="false"  face="Georgia"  edge="undefined"  shadow="undefined"  name="NickPoints"  ]
[wait  time="3000"  ]
[tb_ptext_hide  time="1000"  ]
[jump  storage="Final.ks"  target="*TheEnd"  ]
*HappyMiaEnd

[chara_show  name="Mia"  time="1000"  wait="true"  storage="chara/6/Mia_.png"  width="405"  height="649"  left="890"  top="159"  reflect="false"  ]
[tb_start_text mode=1 ]
Мы с Мией стали настоящими подругами.[p]
[_tb_end_text]

[tb_ptext_show  x="410"  y="350"  size="30"  color="0x0DF704"  time="1000"  name="WithMia"  text="Достижение:&nbsp;дружба&nbsp;с&nbsp;Мией"  face="Georgia"  ]
[tb_ptext_show  x="190.00001525878906"  y="419.99999237060547"  size="30"  color="0x00f030"  time="1000"  text="Вы&nbsp;набрали&nbsp;достаточно&nbsp;баллов&nbsp;отношений&nbsp;с&nbsp;Мией"  anim="false"  face="Georgia"  edge="undefined"  shadow="undefined"  name="MiaPoints"  ]
[wait  time="3000"  ]
[tb_ptext_hide  time="1000"  ]
[jump  storage="Final.ks"  target="*TheEnd"  ]
*NotEnoughtClue

[tb_start_text mode=1 ]
... что всё ещё не могу сложить фрагменты в единую картину.[p]

[_tb_end_text]

[tb_ptext_show  x="410"  y="350"  size="30"  color="0xffffff"  time="1000"  face="Georgia"  name="NotSherlock"  text="Достижение:&nbsp;Не&nbsp;Шерлок&nbsp;Холмс."  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="380"  y="380"  size="30"  color="0xffffff"  time="1000"  name="NotEnoughtClue"  text="Вы&nbsp;не&nbsp;нашли&nbsp;достаточно&nbsp;улик&nbsp;против&nbsp;Джо"  face="Georgia"  ]
[wait  time="3000"  ]
[tb_ptext_hide  time="1000"  ]
[tb_start_text mode=1 ]
Я позвонила Джо и попросила его встретиться завтра в кафе, чтобы обсудить кое-что очень важное.[p]
[_tb_end_text]

[tb_hide_message_window  ]
[bg  time="1000"  method="crossfade"  storage="cafe1.webp"  ]
[chara_show  name="Криста"  time="1000"  wait="true"  left="899"  top="159"  width="426"  height="691"  reflect="false"  ]
[chara_show  name="Joeh"  time="1000"  wait="true"  storage="chara/2/Joeh_.png"  width="370"  height="587"  left="0"  top="150"  reflect="false"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
В условленное время Джо уже ждал меня за столиком с двумя чашками чая.[p]
#Джо:
Держи, я взял тебе с бергамотом.[p]
#
Он пододвинул ко мне одну из чашек[p]
#Джо:
О чём ты хотела поговорить?[p]
#
Я опустила взгляд в чашку, не зная, как построить разговор.[p]
#Криста:
Вся эта ситуация с Мией, отравлением, больницей...[p]
Прости, но мне кажется, ты как-то замешан в этом.[p]
#
Джо нахмурился, но не казался удивлённым.[p]
#Джо:
Даже если и так, то что?[p]
#
Я в шоке округлила глаза.[p]
#Криста:
Как это "что"? Так же нельзя![p]
#
[_tb_end_text]

[jump  storage="Final.ks"  target="*JoehSympathy"  cond="f.Joeh>5"  ]
[jump  storage="Final.ks"  target="*NoJoehSympathy"  ]
*JoehSympathy

[tb_start_text mode=1 ]
Постаравшись взять себя в руки, я обратилась к Джо спокойным размеренным голосом:[p]
#Криста:
Джо, я понимаю: бывают разные ситуации в жизни. Но я уверена, что всё можно решить разными путями. [p]
Я считаю тебя своим другом и готова помочь тебе, чем смогу. [p]
Поделись со мной, и мы вместе что-нибудь придумаем.[p]
#

[_tb_end_text]

[jump  storage="Final.ks"  target="*JoehNickFail"  cond="f.JNFail==1"  ]
[tb_start_text mode=1 ]
Джо тяжело вздохнул и, глядя мне в глаза, признался:[p]
#Джо:
Мне очень нужны деньги, Криста.[p]
Моя мать тяжело больна и зарплаты отца едва хватает на её лекарства. [p]
Один мой знакомый поообещал мне хороший заработок, и я не смог отказаться.[p]
Зи — это совсем лёгкий наркотик: чтобы он реально навредил, его нужно принимать очень долго или в очень большой дозировке. [p]
Я не идиот, я слежу за этим: больше одной порции в руки не продаю,[p]
да и берут нечасто — перед сложными контрольными или для экзаменов.[p]
Эта штука, говорят, неплохо прочищает мозги и снимает стресс.[p]
#Криста:
Ты сам не пробовал?[p]
#Джо:
Нет, конечно! У меня нет лишних денег, чтобы брать товар у самого себя. [p]
#Криста:
А как же Мия? Ты говоришь, что зи не вредит, но Мия оказалась в больнице из-за него.[p]
#Джо:
Я не знаю, может партия попалась бракованная или ещё что... Не проверяю же я каждую![p]
#
[_tb_end_text]

[tb_start_text mode=4 ]
То, что рассказывал Джо, было ужасно.
Я поняла, что должна...
[_tb_end_text]

[glink  color="btn_22_yellow"  storage="Final.ks"  size="20"  text="Помочь&nbsp;ему"  target="*ForgiveJoeh"  glink_sm="true"  x="545"  y="362"  width="200"  height="25"  _clickable_img=""  ]
[glink  color="btn_22_black"  storage="Final.ks"  size="20"  text="Обвинить&nbsp;его"  target="*DoNotForgiveJoeh"  glink_sm="true"  x="545"  y="400"  width="200"  height="25"  _clickable_img=""  ]
[s  ]
*DoNotForgiveJoeh

[tb_start_text mode=1 ]
#Криста:
Прости, Джо. Мне очень жаль твою маму, но торговать наркотиком, чтобы заработать - это отвратительно.[p]
Из-за тебя могут серьёзно пострадать другие люди, а тебе словно наплевать.[p]
Извини, я не могу это так оставить...[p]
#
Так и не притронувшись к чаю, я вышла из кафе и сразу направилась в ближайшее отделение полиции, чтобы написать заявление.[p]
Все мои показания были проверены, и вскоре Джо был арестован за торговлю ZИ.[p]
А значит, все мои друзья, одноклассники и другие учащиеся Винстер Хай отныне были в безопасности.[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_ptext_show  x="410"  y="350"  size="30"  color="0xdef200"  time="1000"  face="Georgia"  name="BetrayJoehTrust"  text="Достижение:&nbsp;Ля,&nbsp;ты&nbsp;крыса!"  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="290.00001525878906"  y="430.0000228881836"  size="30"  color="0xecef02"  time="1000"  name="Betrayal"  text="Вы&nbsp;втёрлись&nbsp;в&nbsp;доверие&nbsp;к&nbsp;Джо&nbsp;и&nbsp;предали&nbsp;его"  face="Georgia"  anim="false"  edge="undefined"  shadow="undefined"  ]
[wait  time="3000"  ]
[tb_ptext_hide  time="1000"  ]
[jump  storage="Final.ks"  target="*TheEnd"  ]
*ForgiveJoeh

[tb_start_text mode=1 ]
... но я правда считала его своим другом. И я обещала помочь.[p]
#Криста:
Джо, послушай меня...[p]
Пожалуйста, прекрати это. Мия поправится, но что, если в следующий раз всё закончится... иначе?[p]
Ты даже не знаешь, что за гадость на самом деле ты продаешь. Что, если кто-то серьёзно пострадает? [p]
#
Я замолчала. Джо тоже не знал, что сказать.[p]
#Криста:
Пожалуйста, Джо... Пообещай мне, что перестанешь.[p]
Скажешь этому своему знакомому, что больше не хочешь заниматься такими вещами.[p]
И мы что-нибудь придумаем, найдём деньги.[p]
#
Джо долго молчал, глядя в чашку чая. [p]
Наконец, кивнул.[p]
#Джо:
Спасибо. За понимание, за поддержку.[p]
Я верю тебе. Верю, что ты не сдашь меня и верю, что поможешь.[p]
Ты мой друг, и мы вместе что-нибудь придумаем.[p]
#
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_ptext_show  x="410"  y="350"  size="30"  color="0xdef200"  time="1000"  face="Georgia"  name="JoehFriendship"  text="Достижение:&nbsp;Дружба&nbsp;побеждает&nbsp;всё"  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="79.98750305175781"  y="429.99999237060547"  size="30"  color="0xecef02"  time="1000"  name="JoehFriendshipWin"  text="Благодаря&nbsp;хорошим&nbsp;отношениям&nbsp;с&nbsp;Джо&nbsp;Вы&nbsp;уговорили&nbsp;его&nbsp;бросить&nbsp;торговлю&nbsp;ZИ"  face="Georgia"  anim="false"  edge="undefined"  shadow="undefined"  ]
[wait  time="3000"  ]
[tb_ptext_hide  time="1000"  ]
[jump  storage="Final.ks"  target="*TheEnd"  ]
*JoehNickFail

[tb_start_text mode=1 ]
Джо зло усмехнулся.[p]
#Джо:
Разве я - твой друг? А мне казалось: тот ботан, с которым ты обнималась вчера в больнице.[p]
Иди к чёрту, Криста. [p]
Ты ничего не знаешь и ничего не докажешь. [p]
#
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_ptext_show  x="410"  y="350"  size="30"  color="0xFCEC05"  time="1000"  face="Georgia"  name="CriticalFail"  text="Достижение:&nbsp;Обманутая&nbsp;дружба"  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="320.00001525878906"  y="429.99999237060547"  size="30"  color="0xF9F304"  time="1000"  name="JoehNickFail"  text="Джо&nbsp;считал&nbsp;Вас&nbsp;другом,&nbsp;а&nbsp;Вы&nbsp;обняли&nbsp;другого"  face="Georgia"  anim="false"  edge="undefined"  shadow="undefined"  ]
[wait  time="3000"  ]
[tb_ptext_hide  time="1000"  ]
[tb_start_text mode=1 ]
Я вернулась домой и долго не могла найти себе места, понимая, что упустила что-то важное.[p]
[_tb_end_text]

[jump  storage="Final.ks"  target="*MiaDeath"  cond="f.MiaLive!=1"  ]
[jump  storage="Final.ks"  target="*TheEnd"  ]
*MiaDeath

[tb_start_text mode=1 ]
В конце учебного года школу потрясла страшная новость: [p]
около десятка учеников попали в больницу с отравлением или передозировкой ZИ.[p]
Больше половины из них не смогли спасти.[p]
В их числе была и Мия.[p]
[_tb_end_text]

[tb_ptext_show  x="410"  y="350"  size="30"  color="0xd12a35"  time="1000"  face="Georgia"  name="MiasDeath"  text="Достижение:&nbsp;Смерть&nbsp;Мии"  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="419.99998474121094"  y="399.99999237060547"  size="30"  color="0xe63541"  time="1000"  name="MiasDeathText"  text="Вы&nbsp;не&nbsp;смогли&nbsp;спасти&nbsp;Мию"  face="Georgia"  anim="false"  edge="undefined"  shadow="undefined"  ]
[wait  time="3000"  ]
[tb_ptext_hide  time="1000"  ]
[jump  storage="Final.ks"  target="*TheEnd"  ]
*NoJoehSympathy

[tb_start_text mode=1 ]
#Джо:
Кто ты такая, чтобы судить, что правильно, а что нет?[p]
#
Я замешкалась, не зная, злиться или смущаться. [p]
Вместо ответа, я потянулась сделать глоток чая.[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="CupOfTea.webp"  ]
[jump  storage="Final.ks"  target="*NickHelp"  cond="f.Nick>5"  ]
[jump  storage="Final.ks"  target="*MiaHelp"  cond="f.Mia>5"  ]
[jump  storage="Final.ks"  target="*WithoutHelp"  ]
*NickHelp

[tb_start_text mode=1 ]
#Ник:
Криста, не пей![p]
#
Услышав громкий крик Ника, я повернулась, убирая чашку от губ.[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="cafe1.webp"  ]
[chara_show  name="Nick"  time="1000"  wait="true"  storage="chara/5/Nick_full.png"  width="527"  height="750"  left="399"  top="130"  reflect="true"  ]
[tb_start_text mode=1 ]
Ник, запыхавшись, подбежал к нашему столику, зло глядя на Джо. [p]
Тот в свою очередь встретил взгляд Ника с таким же гневом.[p]


[_tb_end_text]

[chara_show  name="Joeh"  time="1000"  wait="true"  storage="chara/2/Joeh_.png"  width="426"  height="687"  left="0"  top="150"  reflect="false"  ]
[tb_start_text mode=1 ]
#Джо:
Какого чёрта ты тут забыл? Не видишь, мы разговариваем.[p]
#Ник:
Ты что-то подсыпал в чашку Кристы.[p]
#Джо:
А ты не охренел?![p]
#


[_tb_end_text]

[chara_show  name="Криста"  time="1000"  wait="true"  storage="chara/1/Krista_.png"  width="573"  height="939"  left="840"  top="120"  reflect="false"  ]
[tb_start_text mode=1 ]
Я вгляделась в свой чай.[p]
#Криста:
Ты уверен, Ник? Откуда ты знаешь?[p]
#Ник:
Проходил мимо и увидел в окно, как этот придурок сыпет какую-то зелёную дрянь в чашку, а потом отдаёт её тебе. [p]
#
Я внимательнее всмотрелась в жидкость в чашке, потом осторожно понюхала.[p]
Ничего особенного я не заметила, но и причин не доверять Нику у меня не было.[p]
Ник и Джо буравили друг друга недобрыми взглядами, пока Ник не нарушил молчание.[p]
#Ник:
Что это за гадость? Признаешься сам или мне вызвать полицию?[p]
#Джо:
Ты совсем рехнулся? Какая к чертям полиция?[p]
#
Несмотря на уверенный голос, было видно, что Джо нервничает. И это настораживало.[p]
Окинув взглядом кафе и очевидно сообразив, что скандал будет не в его пользу, Джо понизил голос и обратился ко мне.[p]
#Джо:
Ты просто была такая нервная, я хотел, чтобы ты успокоилась, расслабилась...[p]
#Криста:
Ты подсыпал мне в чай успокоительное?[p]
#Джо:
Я подсыпал тебе зи.[p]
#
Ник вскочил, хватая Джо за воротник футболки. [p]
#Ник:
ТЫ В СВОЁМ УМЕ?![p]
#Джо:
Эй-эй, убери от меня этого психованного...[p]
#Ник:
Зи — наркотик, дебил! Какого чёрта ты вытворяешь?[p]
#
[_tb_end_text]

[tb_start_text mode=1 ]
На шум прибежал хозяин кафе.[p]
А когда Ник рассказал о подсыпанном в чашку наркотике, он всё-таки вызвал полицию.[p]
На следующий день экспертиза подтвердила наличие ZИ в чае и Джо арестовали. [p]
Теперь в нашей школе стало безопаснее.[p]
Мия вернулась к учебе через несколько дней, и я смущённо попросила её пересесть за другую парту.[p]
Видя, как мы с Ником смотрим друг на друга, она согласилась без лишних вопросов, лишь проводила нас хитрой улыбкой.[p]
Правда, прошло ещё две недели, прежде чем Ник предложил мне встречатьcя, но лучше поздно, чем никогда.[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_ptext_show  x="409.99998474121094"  y="289.99998474121094"  size="30"  color="0x046AF9"  time="1000"  face="Georgia"  name="NickWay"  text="Достижение:&nbsp;Вместе&nbsp;мы&nbsp;сила!"  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="150.00001525878906"  y="450.0000228881836"  size="30"  color="0x3502F1"  time="1000"  name="NickPointsEnought"  text="Вы&nbsp;набрали&nbsp;достаточно&nbsp;баллов&nbsp;отношений&nbsp;с&nbsp;Ником,&nbsp;чтобы&nbsp;он&nbsp;помог&nbsp;Вам"  face="Georgia"  anim="false"  edge="undefined"  shadow="undefined"  ]
[wait  time="3000"  ]
[tb_ptext_hide  time="1000"  ]
[jump  storage="Final.ks"  target="*TheEnd"  ]
*MiaHelp

[tb_start_text mode=1 ]
Сделав пару глотков, я остановилась.[p]
Чай имел непривычный привкус. [p]

[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="cafe1.webp"  ]
[chara_show  name="Joeh"  time="1000"  wait="true"  storage="chara/2/Joeh_.png"  width="446"  height="716"  left="-30"  top="160"  reflect="false"  ]
[chara_show  name="Криста"  time="1000"  wait="true"  storage="chara/1/Krista_.png"  width="576"  height="940"  left="809"  top="130"  reflect="false"  ]
[tb_start_text mode=1 ]
Сидящий напротив Джо пристально смотрел на меня.[p]
#Криста:
Что?[p]
#Джо:
Ты хорошо себя чувствуешь? Ты как-то побледнела.[p]
#
Я отрицательно мотнула головой, как вдруг поняла, что вслед за моим взглядом мир начал расплываться...[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="fadeIn"  storage="black.jpg"  ]
[wait  time="3000"  ]
[bg  time="1000"  method="fadeIn"  storage="palata.jpg"  ]
[chara_show  name="Mia"  time="1000"  wait="true"  storage="chara/6/Mia_.png"  width="379"  height="618"  left="900"  top="130"  reflect="false"  ]
[chara_show  name="Криста"  time="1000"  wait="true"  storage="chara/1/Krista_.png"  width="404"  height="657"  left="-50"  top="140"  reflect="true"  ]
[tb_start_text mode=1 ]
#Мия:
Привет, соня![p]
#
Я открыла глаза и с удивлением огляделась.[p]
Больничная палата была точной копией той, где лежала Мия несколько дней назад.[p]
Вот только теперь мы поменялись местами.[p]
#Криста:
Что произошло? Почему я здесь?[p]
#Мия:
Этот ненормальный подсыпал тебе зи в чай.[p]
Без понятия, знал он или нет, что наркотик "палёный", и уж точно не понимаю, чего он хотел этим достигнуть...[p]
Но после того, как ты вчера ушла, я написала заявление в полицию.[p]
И как только Джо попытался свалить всё на тебя, его тут же заткнули и повязали. А тебя отправили сюда...[p]
Не волнуйся, уже через пару дней будешь, как новенькая.[p]
#
Слова ещё немного путались в окутанном туманом сознании, но суть я уловила:[p]
Джо теперь за решёткой за торговлю ZИ, а все наши одноклассники в безопасности.[p]
Благодаря Мие.[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_ptext_show  x="419.99998474121094"  y="209.99999237060547"  size="30"  color="0x03F463"  time="1000"  face="Georgia"  name="MiaWay"  text="Достижение:&nbsp;Женская&nbsp;дружба"  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="100.00001525878906"  y="430.0000228881836"  size="30"  color="0x03F36C"  time="1000"  name="MiaPointsEnought"  text="Вы&nbsp;набрали&nbsp;достаточно&nbsp;баллов&nbsp;отношений&nbsp;с&nbsp;Мией,&nbsp;чтобы&nbsp;она&nbsp;помогла&nbsp;Вам"  face="Georgia"  anim="false"  edge="undefined"  shadow="undefined"  ]
[wait  time="3000"  ]
[tb_ptext_hide  time="1000"  ]
[jump  storage="Final.ks"  target="*TheEnd"  ]
*WithoutHelp

[tb_start_text mode=1 ]
Сделав пару глотков, я остановилась.[p]
Чай имел непривычный привкус. [p]

[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="cafe1.webp"  ]
[chara_show  name="Joeh"  time="1000"  wait="true"  storage="chara/2/Joeh_.png"  width="446"  height="716"  left="-30"  top="160"  reflect="false"  ]
[chara_show  name="Криста"  time="1000"  wait="true"  storage="chara/1/Krista_.png"  width="576"  height="940"  left="809"  top="130"  reflect="false"  ]
[tb_start_text mode=1 ]
Сидящий напротив Джо пристально смотрел на меня.[p]
#Криста:
Что?[p]
#Джо:
Ты хорошо себя чувствуешь? Ты как-то побледнела.[p]
#
Я отрицательно мотнула головой, как вдруг поняла, что вслед за моим взглядом мир начал расплываться...[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="fadeIn"  storage="black.jpg"  ]
[wait  time="3000"  ]
[tb_start_text mode=1 ]
Я пришла в себя в больничной палате в окружении полиции. [p]
Оказалось, у меня отравление ZИ, и вдобавок пакетик этой гадости нашли в моём рюкзаке.[p]
Как я ни пыталась объяснить, что добровольно ничего не принимала и уж точно не покупала эту дрянь, без доказательств мне никто не верил.[p]
Со мной провели множество воспитательных бесед, после чего до сентября отстранили от учёбы и отправили под домашний арест.[p]
Пропустив итоговые экзамены, я вынуждена была остаться на второй год. [p]
[_tb_end_text]

[tb_ptext_show  x="409.99998474121094"  y="259.99999237060547"  size="30"  color="0xffffff"  time="1000"  face="Georgia"  name="Fail"  text="Достижение:&nbsp;Это&nbsp;подстава!"  anim="false"  edge="undefined"  shadow="undefined"  ]
[tb_ptext_show  x="120.00001525878906"  y="440.0000228881836"  size="30"  color="0xffffff"  time="1000"  name="FailText"  text="Вы&nbsp;не&nbsp;набрали&nbsp;достаточно&nbsp;баллов&nbsp;отношений&nbsp;ни&nbsp;с&nbsp;кем&nbsp;из&nbsp;персонажей.&nbsp;"  face="Georgia"  anim="false"  edge="undefined"  shadow="undefined"  ]
[wait  time="3000"  ]
[tb_ptext_hide  time="1000"  ]
[jump  storage="Final.ks"  target="*MiaDeath"  cond="f.MiaLive!=1"  ]
*TheEnd

[cm  ]
[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.jpg"  ]
[tb_ptext_show  x="339.99998474121094"  y="259.99999237060547"  size="30"  color="0xffffff"  time="1000"  text="Поздравляем&nbsp;с&nbsp;завершением&nbsp;истории!"  name="End"  anim="false"  face="Georgia"  edge="undefined"  shadow="undefined"  ]
[wait  time="3000"  ]
[tb_ptext_hide  time="1000"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
Сценарий и разработка:[p]
Aienna[p]
Вдохновлено: [p]
играми Нэнси Дрю[p]
Персонажи:[p]
сгенерированы в бесплатном приложении Dream By WOMBO[p]
Удаление белого фона с изображения персонажей:[p]
Medaris[p]
Фоны:[p]
Скачаны с ресурса "Sotni - Идеи для вдохновения"[p]
Спасибо:[p]
Всем за внимание![p]

[_tb_end_text]

[tb_hide_message_window  ]
