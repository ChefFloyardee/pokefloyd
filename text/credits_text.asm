CreditsTextPointers:
	dw CredVersion
	dw CredTajiri
	dw CredTaOota
	dw CredMorimoto
	dw CredWatanabe
	dw CredMasuda
	dw CredNisino
	dw CredSugimori
	dw CredNishida
	dw CredMiyamoto
	dw CredKawaguchi
	dw CredIshihara
	dw CredYamauchi
	dw CredZinnai
	dw CredHishida
	dw CredSakai
	dw CredYamaguchi
	dw CredYamamoto
	dw CredTaniguchi
	dw CredNonomura
	dw CredFuziwara
	dw CredMatsusima
	dw CredTomisawa
	dw CredKawamoto
	dw CredKakei
	dw CredTsuchiya
	dw CredTaNakamura
	dw CredYuda
	dw CredMon
	dw CredDirector
	dw CredProgrammers
	dw CredCharDesign
	dw CredMusic
	dw CredSoundEffects
	dw CredGameDesign
	dw CredMonsterDesign
	dw CredGameScene
	dw CredParam
	dw CredMap
	dw CredTest
	dw CredSpecial
	dw CredProducers
	dw CredProducer
	dw CredExecutive
	dw CredTamada
	dw CredSaOota
	dw CredYoshikawa
	dw CredToOota
	dw CredUSStaff
	dw CredUSCoord
	dw CredTilden
	dw CredKawakami
	dw CredHiNakamura
	dw CredGiese
	dw CredOsborne
	dw CredTrans
	dw CredOgasawara
	dw CredIwata
	dw CredIzushi
	dw CredHarada
	dw CredMurakawa
	dw CredFukui
	dw CredClub
	dw CredPAAD

CredVersion: ; this 1 byte difference makes all bank addresses offset by 1 in the blue version
IF DEF(_RED)
	db -8, "  FLOYD VERSION@"
ENDC
IF DEF(_BLUE)
	db -8, "  FLOYD VERSION@"
ENDC
CredTajiri:
	db -5, "begin by making     OBSERVATIONS!@"
CredTaOota:
	db -6, "to understanding      SCIENCE!@"
CredMorimoto:
	db -7, "@"
CredWatanabe:
	db -7, "BILLION years old!@"
CredMasuda:
	db -6, "    unit of           MATTER!@"
CredNisino:
	db -7, "BILLION years old!@"
CredSugimori:
	db -5, "ACCELERATION!@"
CredNishida:
	db -6, "of CELLS!@"
CredMiyamoto:
	db -7, "#MON, NINTENDO, and the GAMEFREAK      Engine@"
CredKawaguchi:
	db -8, "TAKASHI KAWAGUCHI@"
CredIshihara:
	db -8, "TSUNEKAZU ISHIHARA@"
CredYamauchi:
	db -7, "  CHASEFLOYDINC         Production@"
CredZinnai:
	db -7, "HIROYUKI ZINNAI@"
CredHishida:
	db -7, "     TOKKA@"
CredSakai:
	db -6, "AKILA THENUWARA@"
CredYamaguchi:
	db -7, "     FAMILY@"
CredYamamoto:
	db -7, "     FRIENDS@"
CredTaniguchi:
	db -8, "are APPLICATIONS of            SCIENCE!@"
CredNonomura:
	db -8, "FUMIHIRO NONOMURA@"
CredFuziwara:
	db -7, "MOTOFUMI FUZIWARA@"
CredMatsusima:
	db -7, "are APPLICATIONS of            SCIENCE!@"
CredTomisawa:
	db -7, "  PAST and PRESENT@"
CredKawamoto:
	db -7, "     STUDENTS@"
CredKakei:
	db -6, "is held CONSTANT!@"
CredTsuchiya:
	db -7, "KAZUKI TSUCHIYA@"
CredTaNakamura:
	db -6, "is what you                   CHANGE!@"
CredYuda:
	db -6, "DEPENDS on the   CHANGING INDEPENDENT Variable!@"
CredMon:
	db -3, "#MON@"
CredDirector:
	db -4, "All Science        EXPERIMENTS@"
CredProgrammers:
	db -5, "MATH is                CRUCIAL@"
CredCharDesign:
	db -4, "FORCE equals      MASS times@"
CredMusic:
	db -6, "ATOMS are the         BASIC@"
CredSoundEffects:
	db -6, "Our UNIVERSE is     over 13.7@"
CredGameDesign:
	db -5, "The EARTH is       about 4.54@"
CredMonsterDesign:
	db -6, "All LIVING things are MADE@" 
CredGameScene:
	db -6, "TECHNOLOGY and      ENGINEERING@"
CredParam:
	db -8, "The INDEPENDENT      Variable@"
CredMap:
	db -4, "The DEPENDENT      Variable@"
CredTest:
	db -7, "The CONTROL          Variable@"
CredSpecial:
	db -7, " SPECIAL THANKS@"
CredProducers:
	db -4, "BASED OFF OF@"
CredProducer:
	db -4, "PRODUCER@"
CredExecutive:
	db -7, "THIS HAS BEEN A@"
CredTamada:
	db -6, "  Chase Floyd@"
CredSaOota:
	db -5, "SATOSHI OOTA@"
CredYoshikawa:
	db -6, "RENA YOSHIKAWA@"
CredToOota:
	db -6, "TOMOMICHI OOTA@"
CredUSStaff:
	db -7, "   CREATED BY@"
CredUSCoord:
	db -7, "US COORDINATION@"
CredTilden:
	db -5, "GAIL TILDEN@"
CredKawakami:
	db -6, "NAOKO KAWAKAMI@"
CredHiNakamura:
	db -6, "HIRO NAKAMURA@"
CredGiese:
	db -6, "WILLIAM GIESE@"
CredOsborne:
	db -5, "SARA OSBORNE@"
CredTrans:
	db -7, "TEXT TRANSLATION@"
CredOgasawara:
	db -6, "NOB OGASAWARA@"
CredIwata:
	db -5, "SATORU IWATA@"
CredIzushi:
	db -7, "TAKEHIRO IZUSHI@"
CredHarada:
	db -7, "TAKAHIRO HARADA@"
CredMurakawa:
	db -7, "TERUKI MURAKAWA@"
CredFukui:
	db -5, "KOHTA FUKUI@"
CredClub:
	db -9, "NCL SUPER MARIO CLUB@"
CredPAAD:
	db -5, "PAAD TESTING@"
