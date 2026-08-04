-- ============================================
-- N5 — 7-DARS: Ovqat va hayvonlar kanjilari (花,茶,肉,文,字,物,牛,馬,鳥,魚)
-- ============================================

insert into lessons (lesson_number, title, level, kanji_range, jlpt_level, category, day_number, sort_order) values
  (107, '7-dars: Ovqat va hayvonlar kanjilari', 'N5', '花-魚', 'N5', 'kanji', 7, 7)
on conflict (lesson_number) do nothing;

do $$
declare
  v_lesson_id integer;
  v_kanji_id integer;
begin
  select id into v_lesson_id from lessons where lesson_number = 107;

  -- Kanji: 花
  insert into kanji (lesson_id, kanji_number, character, radical, on_readings, kun_readings, meaning_uz, meaning_en)
  values (v_lesson_id, 1, '花', '艹', ARRAY['カ'], ARRAY['はな'], 'gul', 'flower')
  returning id into v_kanji_id;

  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '花', 'はな', 'gul', 0);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '花びん', 'かびん', 'guldon', 1);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '花火', 'はなび', 'salyut, otashinlar', 2);
  insert into quiz_questions (kanji_id, word, furigana, prompt, correct_answer, options, detail_explanation, example_jp, example_uz) values
    (v_kanji_id, '花火', 'はなび', '花火 so''zining ma''nosi nima?', 'salyut, otashinlar', ARRAY['salyut, otashinlar', 'guldon', 'bog''', 'o''t'], '花 = gul. 花火（はなび）= osmonga otiladigan rangli olov ko''rgazmasi, salyut.', '夏に花火を見ます。', 'Yozda salyut tomosha qilaman.');

  -- Kanji: 茶
  insert into kanji (lesson_id, kanji_number, character, radical, on_readings, kun_readings, meaning_uz, meaning_en)
  values (v_lesson_id, 2, '茶', '艹', ARRAY['チャ', 'サ'], ARRAY[]::text[], 'choy', 'tea')
  returning id into v_kanji_id;

  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, 'お茶', 'ちゃ', 'choy', 0);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '日本茶', 'にほんちゃ', 'yashil choy', 1);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '喫茶店', 'きっさてん', 'kafe, choyxona', 2);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '紅茶', 'こうちゃ', 'qora choy', 3);
  insert into quiz_questions (kanji_id, word, furigana, prompt, correct_answer, options, detail_explanation, example_jp, example_uz) values
    (v_kanji_id, '喫茶店', 'きっさてん', '喫茶店 so''zining ma''nosi nima?', 'kafe, choyxona', ARRAY['kafe, choyxona', 'kutubxona', 'dorixona', 'kinoteatr'], '茶 = choy. 喫茶店（きっさてん）= choy va qahva ichiladigan kafe.', '喫茶店でコーヒーを飲みます。', 'Kafeda qahva ichaman.');

  -- Kanji: 肉
  insert into kanji (lesson_id, kanji_number, character, radical, on_readings, kun_readings, meaning_uz, meaning_en)
  values (v_lesson_id, 3, '肉', '肉', ARRAY['ニク'], ARRAY[]::text[], 'go''sht', 'flesh, meat')
  returning id into v_kanji_id;

  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '肉', 'にく', 'go''sht', 0);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '牛肉', 'ぎゅうにく', 'mol go''shti', 1);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '鳥肉', 'とりにく', 'tovuq go''shti', 2);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '肉体', 'にくたい', 'tana, jism', 3);
  insert into quiz_questions (kanji_id, word, furigana, prompt, correct_answer, options, detail_explanation, example_jp, example_uz) values
    (v_kanji_id, '牛肉', 'ぎゅうにく', '牛肉 so''zining ma''nosi nima?', 'mol go''shti', ARRAY['mol go''shti', 'tovuq go''shti', 'baliq go''shti', 'cho''chqa go''shti'], '肉 = go''sht. 牛肉（ぎゅうにく）= mol (sigir) go''shti.', '牛肉を食べます。', 'Mol go''shtini yeyman.');

  -- Kanji: 文
  insert into kanji (lesson_id, kanji_number, character, radical, on_readings, kun_readings, meaning_uz, meaning_en)
  values (v_lesson_id, 4, '文', '文', ARRAY['ブン', 'モン'], ARRAY['ふみ'], 'gap, matn', 'pattern, letter, sentence')
  returning id into v_kanji_id;

  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '文', 'ぶん', 'gap', 0);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '文学', 'ぶんがく', 'adabiyot', 1);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '文部省', 'もんぶしょう', 'Ta''lim vazirligi', 2);
  insert into quiz_questions (kanji_id, word, furigana, prompt, correct_answer, options, detail_explanation, example_jp, example_uz) values
    (v_kanji_id, '文学', 'ぶんがく', '文学 so''zining ma''nosi nima?', 'adabiyot', ARRAY['adabiyot', 'tarix', 'matematika', 'san''at'], '文 = gap, matn. 文学（ぶんがく）= yozma asarlar, adabiyot sohasi.', '日本文学が好きです。', 'Yaponiya adabiyotini yaxshi ko''raman.');

  -- Kanji: 字
  insert into kanji (lesson_id, kanji_number, character, radical, on_readings, kun_readings, meaning_uz, meaning_en)
  values (v_lesson_id, 5, '字', '宀', ARRAY['ジ'], ARRAY[]::text[], 'harf, belgi', 'letter, character')
  returning id into v_kanji_id;

  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '字', 'じ', 'harf, belgi', 0);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '文字', 'もんじ', 'yozuv belgisi', 1);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '漢字', 'かんじ', 'ieroglif, kanji', 2);
  insert into quiz_questions (kanji_id, word, furigana, prompt, correct_answer, options, detail_explanation, example_jp, example_uz) values
    (v_kanji_id, '漢字', 'かんじ', '漢字 so''zining ma''nosi nima?', 'ieroglif, kanji', ARRAY['ieroglif, kanji', 'hiragana', 'katakana', 'alifbo'], '字 = harf, belgi. 漢字（かんじ）= xitoy kelib chiqishi bo''lgan yapon yozuv belgilari.', '漢字を勉強します。', 'Kanji o''rganaman.');

  -- Kanji: 物
  insert into kanji (lesson_id, kanji_number, character, radical, on_readings, kun_readings, meaning_uz, meaning_en)
  values (v_lesson_id, 6, '物', '牛', ARRAY['ブツ', 'モツ'], ARRAY['もの'], 'narsa', 'thing')
  returning id into v_kanji_id;

  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '物', 'もの', 'narsa', 0);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '生物', 'せいぶつ', 'tirik mavjudot', 1);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '買い物', 'かいもの', 'xarid qilish', 2);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '荷物', 'にもつ', 'yuk, bagaj', 3);
  insert into quiz_questions (kanji_id, word, furigana, prompt, correct_answer, options, detail_explanation, example_jp, example_uz) values
    (v_kanji_id, '買い物', 'かいもの', '買い物 so''zining ma''nosi nima?', 'xarid qilish', ARRAY['xarid qilish', 'sayohat qilish', 'dam olish', 'o''qish'], '物 = narsa. 買い物（かいもの）= do''kondan narsa sotib olish, xarid.', 'スーパーで買い物をします。', 'Supermarketda xarid qilaman.');

  -- Kanji: 牛
  insert into kanji (lesson_id, kanji_number, character, radical, on_readings, kun_readings, meaning_uz, meaning_en)
  values (v_lesson_id, 7, '牛', '牛', ARRAY['ギュウ'], ARRAY['うし'], 'sigir, mol', 'cattle, cow, bull, ox')
  returning id into v_kanji_id;

  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '牛', 'うし', 'sigir, mol', 0);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '牛肉', 'ぎゅうにく', 'mol go''shti', 1);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '牛乳', 'ぎゅうにゅう', 'sigir suti', 2);
  insert into quiz_questions (kanji_id, word, furigana, prompt, correct_answer, options, detail_explanation, example_jp, example_uz) values
    (v_kanji_id, '牛乳', 'ぎゅうにゅう', '牛乳 so''zining ma''nosi nima?', 'sigir suti', ARRAY['sigir suti', 'echki suti', 'qo''y suti', 'tuya suti'], '牛 = sigir, mol. 牛乳（ぎゅうにゅう）= sigirdan olinadigan sut.', '毎朝牛乳を飲みます。', 'Har kuni ertalab sigir suti ichaman.');

  -- Kanji: 馬
  insert into kanji (lesson_id, kanji_number, character, radical, on_readings, kun_readings, meaning_uz, meaning_en)
  values (v_lesson_id, 8, '馬', '馬', ARRAY['バ'], ARRAY['うま'], 'ot', 'horse')
  returning id into v_kanji_id;

  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '馬', 'うま', 'ot', 0);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '馬車', 'ばしゃ', 'aravacha (otda tortiladigan)', 1);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '馬力', 'ばりき', 'ot kuchi (h.p.)', 2);
  insert into quiz_questions (kanji_id, word, furigana, prompt, correct_answer, options, detail_explanation, example_jp, example_uz) values
    (v_kanji_id, '馬力', 'ばりき', '馬力 so''zining ma''nosi nima?', 'ot kuchi (h.p.)', ARRAY['ot kuchi (h.p.)', 'aravacha', 'ot yugurishi', 'otxona'], '馬 = ot. 馬力（ばりき）= dvigatel kuchini o''lchash birligi, ot kuchi.', 'この車は200馬力です。', 'Bu mashina 200 ot kuchiga ega.');

  -- Kanji: 鳥
  insert into kanji (lesson_id, kanji_number, character, radical, on_readings, kun_readings, meaning_uz, meaning_en)
  values (v_lesson_id, 9, '鳥', '鳥', ARRAY['チョウ'], ARRAY['とり'], 'qush', 'bird')
  returning id into v_kanji_id;

  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '鳥', 'とり', 'qush', 0);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '白鳥', 'はくちょう', 'oqqush', 1);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '焼き鳥', 'やきとり', 'qovurilgan tovuq (shashlik)', 2);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '野鳥', 'やちょう', 'yovvoyi qush', 3);
  insert into quiz_questions (kanji_id, word, furigana, prompt, correct_answer, options, detail_explanation, example_jp, example_uz) values
    (v_kanji_id, '焼き鳥', 'やきとり', '焼き鳥 so''zining ma''nosi nima?', 'qovurilgan tovuq (shashlik)', ARRAY['qovurilgan tovuq (shashlik)', 'oqqush', 'yovvoyi qush', 'tovuq tuxumi'], '鳥 = qush. 焼き鳥（やきとり）= cho''pga tortilib qovurilgan tovuq go''shti taomi.', '居酒屋で焼き鳥を食べます。', 'Izakayada qovurilgan tovuq yeyman.');

  -- Kanji: 魚
  insert into kanji (lesson_id, kanji_number, character, radical, on_readings, kun_readings, meaning_uz, meaning_en)
  values (v_lesson_id, 10, '魚', '魚', ARRAY['ギョ'], ARRAY['さかな', 'うお'], 'baliq', 'fish')
  returning id into v_kanji_id;

  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '魚', 'さかな', 'baliq', 0);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '魚屋', 'さかなや', 'baliq do''koni', 1);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '焼き魚', 'やきざかな', 'qovurilgan baliq', 2);
  insert into kanji_combos (kanji_id, word, furigana, meaning_uz, sort_order) values
    (v_kanji_id, '金魚', 'きんぎょ', 'oltin baliqcha', 3);
  insert into quiz_questions (kanji_id, word, furigana, prompt, correct_answer, options, detail_explanation, example_jp, example_uz) values
    (v_kanji_id, '金魚', 'きんぎょ', '金魚 so''zining ma''nosi nima?', 'oltin baliqcha', ARRAY['oltin baliqcha', 'baliq do''koni', 'qovurilgan baliq', 'dengiz baliqi'], '魚 = baliq. 金魚（きんぎょ）= akvarium uchun boqiladigan chiroyli baliqcha.', '水そうで金魚を飼っています。', 'Akvariumda oltin baliqcha boqaman.');

end $$;
